require 'httparty'
require 'json'

class FiveDayWeather
  include HTTParty

  APIKEY='360b2ae91268e0f77205a5b5d08c3b63'
  
  base_uri 'https://api.openweathermap.org/data/2.5'

  def retrieve_five_day_weather_name(city_name)
    @five_day_weather_data = JSON.parse(self.class.get("/forecast?q=#{city_name}&appid=#{APIKEY}").body)
  end

  def retrieve_five_day_weather_id(id)
    @five_day_weather_data = JSON.parse(self.class.get("/forecast?id=#{id}&appid=#{APIKEY}").body)
  end

  def retrieve_cod
    @five_day_weather_data['cod']
  end

  def retrieve_message
    @five_day_weather_data['message']
  end

  def retrieve_cnt
    @five_day_weather_data['cnt']
  end

  def retrieve_list
    @five_day_weather_data['list']
  end

  def retrieve_list_dt
    list_dt = []
    retrieve_list.each{ |list| 
      list_dt << list['dt']
    }
    list_dt
  end

  def retrieve_list_main
    list_main = []
    retrieve_list.each{ |list| 
      list_main << list['main']
    }
    list_main
  end

  def retrieve_list_main_temp
    list_main_temp = []
    retrieve_list_main.each{ |list| 
      list_main_temp << list['temp']
    }
    list_main_temp
  end

  def retrieve_list_main_temp_min
    list_main_temp_min = []
    retrieve_list_main.each{ |list| 
      list_main_temp_min << list['temp_min']
    }
    list_main_temp_min
  end

  def retrieve_list_main_temp_max
    list_main_temp_max = []
    retrieve_list_main.each{ |list| 
      list_main_temp_max << list['temp_min']
    }
    list_main_temp_max
  end

  def retrieve_list_main_pressure
    list_main_pressure = []
    retrieve_list_main.each{ |list| 
      list_main_pressure << list['pressure']
    }
    list_main_pressure
  end

  def retrieve_list_main_sea_level
    list_main_sea_level = []
    retrieve_list_main.each{ |list| 
      list_main_sea_level << list['sea_level']
    }
    list_main_sea_level
  end

  def retrieve_list_main_grnd_level
    list_main_grnd_level = []
    retrieve_list_main.each{ |list| 
      list_main_grnd_level << list['grnd_level']
    }
    list_main_grnd_level
  end

  def retrieve_list_main_humidity
    list_main_humidity = []
    retrieve_list_main.each{ |list| 
      list_main_humidity << list['humidity']
    }
    list_main_humidity
  end

  def retrieve_list_main_temp_kf
    list_main_temp_kf = []
    retrieve_list_main.each{ |list| 
      list_main_temp_kf << list['temp_kf']
    }
    list_main_temp_kf
  end

  def retrieve_list_weather
    list_weather = []
    retrieve_list.each{ |list| 
      list_weather << list['weather']
    }
    list_weather
  end

  def retrieve_list_weather_id
    list_weather_id = []
    retrieve_list_weather.each{ |list| 
      list_weather_id << list['id']
    }
    list_weather_id
  end
end

# test = FiveDayWeather.new
# test.retrieve_five_day_weather_name('London')
# p test.retrieve_list_main_temp
