require 'spec_helper'

describe 'WeatherApp' do
  context 'current weather app works correctly' do

    before(:all) do
      @WeatherApp = WeatherApp.new.current_weather_service
      @WeatherApp.get_current_weather_name('London')
    end

    # it 'should retrieve the data as a hash' do
    #   expect(@WeatherApp).to be_kind_of(Hash)
    # end

    it 'should retrieve the coordinates as a hash' do
      expect(@WeatherApp.retrieve_coord).to be_kind_of(Hash)
    end

    it 'should retrieve the weather as an array' do
      expect(@WeatherApp.retrieve_weather).to be_kind_of(Array)
    end

    it 'should retrieve the base as a string' do
      expect(@WeatherApp.retrieve_base).to be_kind_of(String)
    end

    it 'should retrieve the main as a hash' do
      expect(@WeatherApp.retrieve_main).to be_kind_of(Hash)
    end

    it 'should retrieve the visibility as an integer' do
      expect(@WeatherApp.retrieve_visibility).to be_kind_of(Integer)
    end

    it 'should retrieve the wind as a hash' do
      expect(@WeatherApp.retrieve_wind).to be_kind_of(Hash)
    end

    it 'should retrieve the clouds as a hash' do
      expect(@WeatherApp.retrieve_clouds).to be_kind_of(Hash)
    end

    it 'should retrieve the dt as a integer' do
      expect(@WeatherApp.retrieve_dt).to be_kind_of(Integer)
    end

    it 'should retrieve the sys as a hash' do
      expect(@WeatherApp.retrieve_sys).to be_kind_of(Hash)
    end

    it 'should retrieve the id as an integer' do
      expect(@WeatherApp.retrieve_id).to be_kind_of(Integer)
    end

    it 'should retrieve the name as a string' do
      expect(@WeatherApp.retrieve_name).to be_kind_of(String)
    end

    it 'should retrieve the cod as an integer' do
      expect(@WeatherApp.retrieve_cod).to be_kind_of(Integer)
    end

  end
end