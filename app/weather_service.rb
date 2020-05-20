# frozen_string_literal: true
require_relative '../config/environment'
require_relative 'weatherAPI'
require 'rest-client'

def weather_at(city)
  puts("weather_at #{city}")
  puts RestClient.get(WeatherAPI.regions_url, {})
end

def search_city(city_name)
  puts("search_city --> #{city_name}")
end

def forecast(city)
    puts 'forecast'
    puts city
end
