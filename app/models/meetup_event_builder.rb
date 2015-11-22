class MeetupEventBuilder

  def initialize(event)
    create(event)
  end

  def create(event)
    MeetupEvent.create(
      name: event['name'],
      event_url: event['event_url'],
      address: event['venue']['address_1'],
      address_name: event['venue']['name'],
      address_city: event['venue']['city'],
      time: event['time'],
      duration: event['duration'],
      yes_rsvp_count: event['yes_rsvp_count']
    )
  end
end
