require 'spec_helper'

describe 'WeatherApp' do
  context 'current weather app works correctly' do

    before(:all) do
      @WeatherApp = WeatherApp.new.current_weather_service
      @WeatherApp.retrieve_current_weather_name('London')
    end

    it 'should retrieve the data as a hash' do
      expect(@WeatherApp.retrieve_results).to be_kind_of(Hash)
    end

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

    it 'should retrieve the lon from the coord hash as a float' do
      expect(@WeatherApp.retrieve_coord_lon).to be_kind_of(Float)
    end

    it 'should retrieve the lat from the coord hash as an float' do
      expect(@WeatherApp.retrieve_coord_lat).to be_kind_of(Float)
    end

    it 'should retrieve the id from weather array as an integer' do
      expect(@WeatherApp.retrieve_weather_id).to be_kind_of(Integer)
    end

    it 'should retrieve the main from weather array as a string' do
      expect(@WeatherApp.retrieve_weather_main).to be_kind_of(String)
    end

    it 'should retrieve the description from weather array as a string' do
      expect(@WeatherApp.retrieve_weather_description).to be_kind_of(String)
    end

    it 'should retrieve the icon from weather array as a string' do
      expect(@WeatherApp.retrieve_weather_icon).to be_kind_of(String)
    end

    it 'should retrieve the temperature from main hash as a float' do
      expect(@WeatherApp.retrieve_main_temp).to be_kind_of(Float)
    end

    it 'should retrieve the pressure from main hash as an integer' do
      expect(@WeatherApp.retrieve_main_pressure).to be_kind_of(Integer)
    end

    it 'should retrieve the humidity from main hash as an integer' do
      expect(@WeatherApp.retrieve_main_humidity).to be_kind_of(Integer)
    end

    it 'should retrieve the min temperature from main hash as a float' do
      expect(@WeatherApp.retrieve_main_temp_min).to be_kind_of(Float)
    end

    it 'should retrieve the max temperature from main hash as a float' do
      expect(@WeatherApp.retrieve_main_temp_max).to be_kind_of(Float)
    end

    it 'should retrieve the wind speed from wind hash as an float' do
      expect(@WeatherApp.retrieve_wind_speed).to be_kind_of(Float)
    end

    it 'should retrieve the wind degree from wind hash as an integer' do
      expect(@WeatherApp.retrieve_wind_deg).to be_kind_of(Integer)
    end

    it 'should retrieve all from clouds hash as an integer' do
      expect(@WeatherApp.retrieve_clouds_all).to be_kind_of(Integer)
    end

    it 'should retrieve type from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_type).to be_kind_of(Integer)
    end

    it 'should retrieve id from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_id).to be_kind_of(Integer)
    end

    it 'should retrieve message from sys hash as an float' do
      expect(@WeatherApp.retrieve_sys_message).to be_kind_of(Float)
    end

    it 'should retrieve country from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_country).to be_kind_of(String)
    end

    it 'should retrieve sunrise from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should retrieve sunset from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_sunset).to be_kind_of(Integer)
    end
  end

  context 'current weather app works correctly' do

    before(:all) do
      @WeatherApp = WeatherApp.new.current_weather_service
      @WeatherApp.retrieve_current_weather_id(2633485)
    end

    it 'should retrieve the data as a hash' do
      expect(@WeatherApp.retrieve_results).to be_kind_of(Hash)
    end

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

    it 'should retrieve the lon from the coord hash as a float' do
      expect(@WeatherApp.retrieve_coord_lon).to be_kind_of(Float)
    end

    it 'should retrieve the lat from the coord hash as an float' do
      expect(@WeatherApp.retrieve_coord_lat).to be_kind_of(Float)
    end

    it 'should retrieve the id from weather array as an integer' do
      expect(@WeatherApp.retrieve_weather_id).to be_kind_of(Integer)
    end

    it 'should retrieve the main from weather array as a string' do
      expect(@WeatherApp.retrieve_weather_main).to be_kind_of(String)
    end

    it 'should retrieve the description from weather array as a string' do
      expect(@WeatherApp.retrieve_weather_description).to be_kind_of(String)
    end

    it 'should retrieve the icon from weather array as a string' do
      expect(@WeatherApp.retrieve_weather_icon).to be_kind_of(String)
    end

    it 'should retrieve the temperature from main hash as a float' do
      expect(@WeatherApp.retrieve_main_temp).to be_kind_of(Float)
    end

    it 'should retrieve the pressure from main hash as an integer' do
      expect(@WeatherApp.retrieve_main_pressure).to be_kind_of(Integer)
    end

    it 'should retrieve the humidity from main hash as an integer' do
      expect(@WeatherApp.retrieve_main_humidity).to be_kind_of(Integer)
    end

    it 'should retrieve the min temperature from main hash as a float' do
      expect(@WeatherApp.retrieve_main_temp_min).to be_kind_of(Float)
    end

    it 'should retrieve the max temperature from main hash as a float' do
      expect(@WeatherApp.retrieve_main_temp_max).to be_kind_of(Float)
    end

    it 'should retrieve the wind speed from wind hash as an float' do
      expect(@WeatherApp.retrieve_wind_speed).to be_kind_of(Float)
    end

    it 'should retrieve the wind degree from wind hash as an integer' do
      expect(@WeatherApp.retrieve_wind_deg).to be_kind_of(Integer)
    end

    it 'should retrieve all from clouds hash as an integer' do
      expect(@WeatherApp.retrieve_clouds_all).to be_kind_of(Integer)
    end

    it 'should retrieve type from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_type).to be_kind_of(Integer)
    end

    it 'should retrieve id from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_id).to be_kind_of(Integer)
    end

    it 'should retrieve message from sys hash as an float' do
      expect(@WeatherApp.retrieve_sys_message).to be_kind_of(Float)
    end

    it 'should retrieve country from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_country).to be_kind_of(String)
    end

    it 'should retrieve sunrise from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should retrieve sunset from sys hash as an integer' do
      expect(@WeatherApp.retrieve_sys_sunset).to be_kind_of(Integer)
    end
  end
end