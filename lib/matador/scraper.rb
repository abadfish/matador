class Matador::Scraper
  attr_accessor :lattitude, :longitude, :location

  def initialize
    #gets lattitude and longitude from Location class
    @location = Matador::Location.location
  end


  location_url = 'http://forecast.weather.gov/MapClick.php?lat=40.781581302919285&lon=-73.96648406982422'


  elements = []

  def self.scrape_noaa_weather
    doc = Nokogiri::HTML(open(location_url))

    location = self.new
    location.temp = doc.search("p.myforecast-current-lrg").text
    location.pressure = doc.search("div#current_conditions_detail tr[3]    td").text.split("Barometer")[1]
    location.humidity = doc.search("div#current_conditions_detail tr[1] td").text.split("Humidity")[1]
    location.wind = doc.search("div#current_conditions_detail tr[2] td").text.split("Wind Speed")[1]
    location.visibility = doc.search("div#current_conditions_detail tr[5] td").text.split("Visibility").[1]

    location
  end
end
