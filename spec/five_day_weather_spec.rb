require 'spec_helper'

describe 'WeatherApp' do

  context 'test the five day weather service works correctly' do
    before(:all) do
      @WeatherApp = WeatherApp.new.five_day_weather_service
      @WeatherApp.retrieve_five_day_weather_name('London')
    end

    it 'should return cod as a string' do
      expect(@WeatherApp.retrieve_cod).to be_kind_of(String)
    end

    it 'should return message as a float' do
      expect(@WeatherApp.retrieve_message).to be_kind_of(Float)
    end

    it 'should return cnt as an integer' do
      expect(@WeatherApp.retrieve_cnt).to be_kind_of(Integer)
    end

    it 'should return list as an array' do
      expect(@WeatherApp.retrieve_list).to be_kind_of(Array)
    end

    it 'should return all the dts from the list array as integers' do
      @WeatherApp.retrieve_list_dt.each do |listdt|
        expect(listdt).to be_kind_of(Integer)
      end
    end

    it 'should return all the dts from the list array as integers' do
      @WeatherApp.retrieve_list_main.each do |list_main|
        expect(list_main).to be_kind_of(Hash)
      end
    end

    it 'should return all the temps from the main hash inside the list array as integers' do
      @WeatherApp.retrieve_list_main_temp.each do |list_main_temp|
        expect(list_main_temp).to be_kind_of(Float)
      end
    end

    it 'should return all the minimum temps from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_temp_min.each do |list_main_temp_min|
        expect(list_main_temp_min).to be_kind_of(Float)
      end
    end

    it 'should return all the maximum temps from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_temp_max.each do |list_main_temp_max|
        expect(list_main_temp_max).to be_kind_of(Float)
      end
    end

    it 'should return all the pressure from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_pressure.each do |list_main_pressure|
        expect(list_main_pressure).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the sea level from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_sea_level.each do |list_main_sea_level|
        expect(list_main_sea_level).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the sea level from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_grnd_level.each do |list_main_grnd_level|
        expect(list_main_grnd_level).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the humidity from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_humidity.each do |list_main_humidity|
        expect(list_main_humidity).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the temp_kf (internal parameter) from the main hash inside the list array as floats' do
      @WeatherApp.retrieve_list_main_temp_kf.each do |list_main_temp_kf|
        expect(list_main_temp_kf).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all weather from the list array as a hash' do
      @WeatherApp.retrieve_list_weather.each do |list_main_weather|
        expect(list_main_weather).to be_kind_of(Array)
      end
    end

    it 'should return all weather ids from the weather array from the list array as a integer' do
      @WeatherApp.retrieve_list_weather_id.each do |list_main_weather_id|
        expect(list_main_weather_id).to be_kind_of(Integer)
      end
    end

    it 'should return all weather types from the weather array from the list array as a string' do
      @WeatherApp.retrieve_list_weather_main.each do |list_main_weather_main|
        expect(list_main_weather_main).to be_kind_of(String)
      end
    end

    it 'should return all weather descriptions from the weather array from the list array as a string' do
      @WeatherApp.retrieve_list_weather_description.each do |list_main_weather_description|
        expect(list_main_weather_description).to be_kind_of(String)
      end
    end

    it 'should return all weather icons from the weather array from the list array as a string' do
      @WeatherApp.retrieve_list_weather_icon.each do |list_main_weather_icon|
        expect(list_main_weather_icon).to be_kind_of(String)
      end
    end

    it 'should return all the clouds from the list array as hashes' do
      @WeatherApp.retrieve_list_clouds.each do |listclouds|
        expect(listclouds).to be_kind_of(Hash)
      end
    end
  end

  context 'current weather app works correctly' do

    before(:all) do
      @WeatherApp = WeatherApp.new.current_weather_service
      @WeatherApp.retrieve_five_day_weather_id(2633485)
    end

    
  end 
end