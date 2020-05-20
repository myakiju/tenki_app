require_relative 'config/environment'
require_relative 'app/util/ascii'
require_relative 'app/weather_service'
require_relative 'app/question'


def good_bye
  puts 'bye! 👋 👋 👋'
  exit 0
end

def result
  prompt = TTY::Prompt.new
  prompt.collect do
    case city = how_is_weather_at(prompt)
    when 'Other'
      puts which_city prompt
    else
      puts "city=#{city}"
    end

    forecast(city)
    prompt.keypress("Press space or enter to continue", keys: [:space, :return])

    # key(:age).ask('Age?', convert: :int)
    #
    # key(:address) do
    #   key(:street).ask('Street?', required: true)
    #   key(:city).ask('City?')
    #   key(:zip).ask('Zip?', validate: /\A\d{3}\Z/)
    # # end
    # break
  end
end

system 'clear'
puts rain.colorize(:cyan)
puts result



