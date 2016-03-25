class Matador::CLI
  attr_accessor :here, :input

  def call
    puts "Welcome to the Matador CLI gem!"
    puts "How can I help you today?"

    list_geolocation
    elements
    good_luck
  end

  def address
    puts "Please enter your address for specific data
    or a zip code for data on a general area: "
    input = gets.strip
  end

  def list_geolocation
    @here = Matador::Location.here(address)
    puts "Your requested location is #{here.lattitude}, #{here.longitude}."
  end

  def fetch_scraper_data
    @location = Matador::Scraper.scrape_noaa_weather(@here.lattitude, @here.longitude)
  end

  def elements
    fetch_scraper_data
    puts "What data do you require for your location?"
    puts "I can give you temperature, pressure, humidity, wind, or visibility."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "temperature"
        puts "temp is currently #{@location.temp}"
      elsif input == "pressure"
        puts "pressure is currently #{@location.pressure}"
      elsif input == "humidity"
        puts "humidity is currently #{@location.humidity}"
      elsif input == "wind"
        puts "wind is currently #{@location.wind}"
      elsif input == "visibility"
        puts "visibility is currently #{@location.visibility}"
      elsif input != "visibility" && input != "wind" && input != "humidity" && input != "pressure" && input != "temperature" && input != "exit"
        puts "At this time I only have pressure, wind, humidity, visibility or temp data."
      end
    end
  end

  def good_luck
    puts "
    May the force be with you.
    "
  end

end
