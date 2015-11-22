MeetupClient.configure do |config|
  config.api_key = Figaro.env.meetup_api_key
end
