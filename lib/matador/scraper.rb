class Matador::Scraper
  attr_accessor :lattitude, :longitude, :location_url, :temp, :pressure, :humidity, :wind, :visibility

  # def lattitude
  #   @lattitude = Matador::CLI.list_geolocation[0]
  # end
  #
  # def longitude
  #   @longitude = Matador::CLI.list_geolocation[1]
  # end

  def self.scrape_noaa_weather
    lattitude = Matador::CLI.list_geolocation[0]
    longitude = Matador::CLI.list_geolocation[1]
    location_url= "http://forecast.weather.gov/MapClick.php?lat=#{lattitude}&lon=#{longitude}"

    doc = Nokogiri::HTML(open(location_url))

    location = self.new
    location.temp = doc.search("p.myforecast-current-lrg").text
    location.pressure = doc.search("div#current_conditions_detail tr[3]    td").text.split("Barometer")[1]
    location.humidity = doc.search("div#current_conditions_detail tr[1] td").text.split("Humidity")[1]
    location.wind = doc.search("div#current_conditions_detail tr[2] td").text.split("Wind Speed")[1]
    location.visibility = doc.search("div#current_conditions_detail tr[5] td").text.split("Visibility")[1]

    location
  end
end
