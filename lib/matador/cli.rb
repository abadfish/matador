class Matador::CLI
  attr_accessor :here, :input

  def call
    puts "How can I help you win this race?"

    list_geolocation
    elements
    good_luck
  end

  def self.address
    puts "Please enter your address: "
    input = gets.strip
  end

  def list_geolocation
    @here = Matador::Location.here
    puts "Your precise location is #{here.lattitude}, #{here.longitude}."
  end

  def temp
    @temp = Matador::Scraper.scrape_noaa_weather.temp
  end

  def pressure
    @pressure = Matador::Scraper.scrape_noaa_weather.pressure
  end

  def humidity
    @humidity = Matador::Scraper.scrape_noaa_weather.humidity
  end

  def wind
    @wind = Matador::Scraper.scrape_noaa_weather.wind
  end

  def visibility
    @visibility = Matador::Scraper.scrape_noaa_weather.visibility
  end



  def elements
    puts "What data do you require for your location?"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "temp"
        puts "temp is currently #{temp}"
      elsif input == "pressure"
        puts "pressure is currently #{pressure}"
      elsif input == "humidity"
        puts "humidity is currently #{humidity}"
      elsif input == "wind"
        puts "wind is currently #{wind}"
      elsif input == "visibility"
        puts "visibility is currently #{visibility}"
      else
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
