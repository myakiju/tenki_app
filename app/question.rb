require_relative '../config/environment'

def cities
  ['São Paulo', 'Rio de Janeiro', 'London', 'Stockholm', 'Other', 'Exit']
end

def how_is_weather_at prompt
  prompt.select("\n\nHow`s the weather at?".colorize(:cyan), cities)
end

def which_city prompt
  prompt.ask("\n\nType the city name you're looking for...\n".colorize(:red)) do |q|
    q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
  end
end


