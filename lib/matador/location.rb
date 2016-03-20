class Matador::Location
  attr_accessor :lattitude, :longitude, :city, :url, :location

  def self.here
    #should return coordinates based on location
    #returns your location as an instance

    #self.scrape_noaa_weather

    location_1 = self.new
    location_1.lattitude = 41.117496
    location_1.longitude = -73.418262
    location_1.city = "Norwalk"
    location_1.url = ""

    location_2 = self.new
    location_2.lattitude = 35.255790
    location_2.longitude = -82.514605
    location_2.city = "Hendersonville"
    location_2.url = ""

    location_1 #location_2]
  end

end
