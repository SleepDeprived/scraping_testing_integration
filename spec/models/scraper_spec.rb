require 'spec_helper'

describe Scraper do

  describe ".new" do
    it "will error without a url" do
      expect{Scraper.new}.to raise_error(ArgumentError)
    end

    it "requires a url" do
      url = "http://jonl.org/"
      scraper = Scraper.new(url)
      expect(scraper).to be_true
    end
  end

  describe "#get_hrefs" do
    let(:scraper) do
      url = "http://jonl.org/"
      Scraper.new(url)
    end

    it "returns an array" do
      expect(scraper.get_hrefs.class).to eq(Array)
    end

    it "has links in the array" do
      expect(scraper.get_hrefs.each {|element| element.match(/.html/)}).to be_true
    end
  end

  describe "#get_images" do
    let(:scraper) do
      url = "http://placekitten.com/"
      Scraper.new(url)
    end

    it "returns an array" do
      expect(scraper.get_images.class).to eq(Array)
    end

    it "contains images in the array" do
      expect(scraper.get_images.each {|element| element.match(/.jpg/)}).to be_true
    end

  end

end
