require 'httparty'
require 'json'

class CurrentWeather
  include HTTParty

  APIKEY='360b2ae91268e0f77205a5b5d08c3b63'
  
  base_uri 'https://api.openweathermap.org/data/2.5'

  def get_current_weather_name(city_name)
    @current_weather_data = JSON.parse(self.class.get("/weather?q=#{city_name}&appid=#{APIKEY}").body)
  end

  def get_current_weather_id(id)
    @current_weather_data = JSON.parse(self.class.get("/weather?id=#{id}&appid=#{APIKEY}").body)
  end

  def retrieve_coord
    @current_weather_data['coord']
  end

end

test = CurrentWeather.new
p test.get_current_weather_name('London')['coord']
