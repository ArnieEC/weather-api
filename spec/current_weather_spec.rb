require 'spec_helper'

describe 'WeatherApp' do
  context 'current weather app works correctly' do

    before(:all) do
      @WeatherApp = WeatherApp.new.current_weather_service
      @WeatherApp.get_current_weather_name('London')
    end

    it 'should retrieve the data as a hash' do
      expect(@WeatherApp).to be_kind_of(Hash)
    end

    it 'should retrieve the coordinates as a hash' do
      expect(@WeatherApp.retrieve_coord).to be_kind_of(Hash)
    end

  end
end