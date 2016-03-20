class Matador::CLI
  attr_accessor :here

  def call
    puts "How can I help you win this race?"
    address
    list_geolocation
    elements
    atomospheric_element
    peace_out
  end

  def address
    puts "Please enter your address: "
    input = gets.strip
  end

  def list_geolocation
    #lists latitiude and longitude
    @here = Matador::Location.here
    #@here.each.with_index(1) do |here, i|  #prob don't need index for mine but let's see if it works first
    puts "#{here.lattitude}, #{here.longitude}."
    #end
  end

  def elements
    require "pry" ; binding.pry
    @element = Matador::Scraper.element
  end

  def atomospheric_element #menu
    puts "Would you like pressure, wind, or temp info? "
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "wind"
        puts "20 MPR NW"
      elsif input == "pressure"
        puts "25 PSI"
      elsif input == "temp"
        puts "45 degrees"
      else
        "Please enter pressure, wind, or temp."
      end
    end
  end

  def peace_out
    puts "
    May the force be with you.
    "
  end

end
