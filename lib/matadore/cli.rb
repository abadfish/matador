class Matadore::CLI
  attr_accessor :here, :input

  def call
    puts "Welcome to the Matadore CLI gem!
    "
    sleep 0.75
    puts "How can I help you today?
    "
    sleep 1.0
    list_geolocation
    elements
    good_luck
  end

  def address
    puts "Please enter your address for specific data"
    puts "or a zip code for data on a general area:
    "
    sleep 0.75
    input = gets.strip
  end

  def list_geolocation
    @here = Matadore::Location.here(address)
    puts "Your requested location is #{here.lattitude}, #{here.longitude}.
    "
  end

  def fetch_scraper_data
    @location = Matadore::Scraper.scrape_noaa_weather(@here.lattitude, @here.longitude)
  end

  def elements
    fetch_scraper_data
    puts "What data do you require for your location?
    "
    sleep 1.0
    puts "I can give you temperature, pressure, humidity, wind, or visibility.
    "
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "temperature"
        puts "
        temp is currently #{@location.temp}
        "
      elsif input == "pressure"
        puts "
        pressure is currently #{@location.pressure}
        "
      elsif input == "humidity"
        puts "
        humidity is currently #{@location.humidity}
        "
      elsif input == "wind"
        puts "
        wind is currently #{@location.wind}
        "
      elsif input == "visibility"
        puts "
        visibility is currently #{@location.visibility}
        "
      elsif input != "visibility" && input != "wind" && input != "humidity" && input != "pressure" && input != "temperature" && input != "exit"
        puts "
        At this time I only have pressure, wind, humidity, visibility or temp data.
        "
      end
    end
  end

  def good_luck
    puts "
    May the force be with you.
    "
  end

end
