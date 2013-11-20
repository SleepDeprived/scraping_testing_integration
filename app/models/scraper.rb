class Scraper

  def initialize(url)
    @url = url
  end

  def get_hrefs
    html = HTTParty.get(@url)
    doc = Nokogiri::HTML(html)
    links = doc.css('a').map {|link| link['href']}
  end

  def get_images
    html = HTTParty.get(@url)
    doc = Nokogiri::HTML(html)
    links = doc.css('img').map {|link| link['src']}
  end

end
