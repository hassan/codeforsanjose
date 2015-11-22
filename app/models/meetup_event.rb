class MeetupEvent < ActiveRecord::Base
  validates :name, presence: true
  validates :event_url, presence: true, uniqueness: true

  def ends_at
    starts_at + duration_in_minutes.minutes
  end
end
