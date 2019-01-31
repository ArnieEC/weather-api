require 'httparty'
require 'json'

class FiveDayWeather
  include HTTParty

  APIKEY='360b2ae91268e0f77205a5b5d08c3b63'
  
  base_uri 'https://api.openweathermap.org/data/2.5'

  def retrieve_current_weather_name(city_name)
    @five_day_weather_data = JSON.parse(self.class.get("/forecast?q=#{city_name}&appid=#{APIKEY}").body)
  end

  def retrieve_current_weather_id(id)
    @five_day_weather_data = JSON.parse(self.class.get("/forecast?id=#{id}&appid=#{APIKEY}").body)
  end

  def retrieve_coord
    @five_day_weather_data['coord']
  end

  def retrieve_weather
    @five_day_weather_data['weather']
  end

  def retrieve_base
    @five_day_weather_data['base']
  end

  def retrieve_main
    @five_day_weather_data['main']
  end

  def retrieve_visibility
    @five_day_weather_data['visibility']
  end

  def retrieve_wind
    @five_day_weather_data['wind']
  end

  def retrieve_clouds
    @five_day_weather_data['clouds']
  end

  def retrieve_dt
    @five_day_weather_data['dt']
  end

  def retrieve_sys
    @five_day_weather_data['sys']
  end

  def retrieve_id
    @five_day_weather_data['id']
  end

  def retrieve_name
    @five_day_weather_data['name']
  end

  def retrieve_cod
    @five_day_weather_data['cod']
  end
  
end

# test = CurrentWeather.new
# p test.get_current_weather_name('London')['coord']
