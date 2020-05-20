# frozen_string_literal: true

module WeatherAPI
  KEY = 'apikey=t6FyAF1MCRMcfPKCEPTzd6nICf3Hr64I'
  BASE_URL = 'http://dataservice.accuweather.com'


  def self.regions_url
    "#{WeatherAPI::BASE_URL}/locations/v1/regions?#{WeatherAPI::KEY}&language=pt-br"
  end
end