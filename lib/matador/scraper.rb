class Matador::Scraper
  attr_accessor :lattitude, :longitude

  def get_page

    Nokogiri::HTML(open('http://forecast.weather.gov/MapClick.php?lat=41.117lon=-74.078&site=okx&unit=0&lg=en&FcstType=text#.Vu38_xIrJsP'))
  end

  def scrape_noaa_weather
    self.get_page.css
  end

end
