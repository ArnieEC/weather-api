require 'spec_helper'

describe 'WeatherApp' do

  context 'test the five day weather service works correctly' do
    before(:all) do
      @WeatherApp = WeatherApp.new.five_day_weather_service
      @WeatherApp.retrieve_current_weather_name('London')
    end

    
  end

  context 'current weather app works correctly' do

    before(:all) do
      @WeatherApp = WeatherApp.new.current_weather_service
      @WeatherApp.retrieve_current_weather_id(2633485)
    end

    
  end 
end