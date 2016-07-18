require 'rubygems'
require 'nokogiri'
# require 'open-uri'

module SquaresHelper
  def randomColor
    return "#" + "%06x" % (rand * 0xffffff)
  end

  # def squareView
  #   page = Nokogiri::HTML(open("application.html"))
  #   puts page.class
  # end


end
