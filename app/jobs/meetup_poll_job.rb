class MeetupPollJob < ActiveJob::Base
  queue_as :low_priority

  def events
    MeetupApi.new.method_request("events", { "group_urlname" => Settings.meetup_url_name })['results']
  end

  def perform
    ActiveRecord::Base.connection_pool.with_connection do
      events.each do |event|
        MeetupEventBuilder.new(event)
      end
    end
  end
end
