require_relative '../matadore'
require_relative 'cli'


class Matadore::Location
  attr_accessor :lattitude, :longitude, :location_1, :address, :input

  def self.here(address)
    self.new.tap do |location|
    # location_array = Geocoder.coordinates(address)
      location.lattitude, location.longitude = Geocoder.coordinates(address)
    # location.longitude = location_array[1]
    end
  end
end
