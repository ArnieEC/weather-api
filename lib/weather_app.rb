require_relative 'services/current_weather'
# require_relative 'services/five_day_weather'

# Weather app services
class WeatherApp
  def current_weather_service
    CurrentWeather.new
  end

  # def five_day_weather_service
  #   MultiplePostcodeService.new
  # end
end
