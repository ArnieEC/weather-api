require 'json'
require 'httparty'
require_relative '../lib/weather_app'
require_relative '../lib/services/current_weather'
require_relative '../lib/services/five_day_weather'
# require 'dotenv'

# Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end
