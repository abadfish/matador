class Matador::Location
  attr_accessor :lattitude, :longitude, :city, :url, :location

  def self.here
    #should return coordinates based on location
    #returns your location as an instance
    location_1 = self.new
    location_1.lattitude = 41.117496
    location_1.longitude = -73.418262
    location_1.city = "Norwalk"
    location_1
  end

  def self.geolocation_url
    url= 'http://forecast.weather.gov/MapClick.php?lat=40.781581302919285&lon=-73.96648406982422'
    # have to find a way to pass in lat and lon
  end

end
