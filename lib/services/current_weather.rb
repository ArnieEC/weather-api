require 'httparty'
require 'json'

class CurrentWeather
  include HTTParty

  APIKEY='360b2ae91268e0f77205a5b5d08c3b63'
  
  base_uri 'https://api.openweathermap.org/data/2.5'

  def retrieve_current_weather_name(city_name)
    @current_weather_data = JSON.parse(self.class.get("/weather?q=#{city_name}&appid=#{APIKEY}").body)
  end

  def retrieve_current_weather_id(id)
    @current_weather_data = JSON.parse(self.class.get("/weather?id=#{id}&appid=#{APIKEY}").body)
  end

  def retrieve_coord
    @current_weather_data['coord']
  end

  def retrieve_weather
    @current_weather_data['weather']
  end

  def retrieve_base
    @current_weather_data['base']
  end

  def retrieve_main
    @current_weather_data['main']
  end

  def retrieve_visibility
    @current_weather_data['visibility']
  end

  def retrieve_wind
    @current_weather_data['wind']
  end

  def retrieve_clouds
    @current_weather_data['clouds']
  end

  def retrieve_dt
    @current_weather_data['dt']
  end

  def retrieve_sys
    @current_weather_data['sys']
  end

  def retrieve_id
    @current_weather_data['id']
  end

  def retrieve_name
    @current_weather_data['name']
  end

  def retrieve_cod
    @current_weather_data['cod']
  end
  
end

test = CurrentWeather.new
p test.retrieve_current_weather_name('London')['coord']
