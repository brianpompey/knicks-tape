require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def get_page
    Nokogiri::HTML(open("https://www.nba.com/knicks/schedule"))
  end

  def scrape_game_index
    games = []
    self.get_page.css("div.season-list").each do |matches|
      matches.css("div.list-item-date").each do |




    end
  end





end
