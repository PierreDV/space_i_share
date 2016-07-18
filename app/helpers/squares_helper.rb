require 'nokogiri'
require 'open-uri'

module SquaresHelper
  def randomColor
    return "#" + "%06x" % (rand * 0xffffff)
  end

  # def squareView
  #   page = Nokogiri::HTML(open("http://localhost:3000/users" + current_user.id.to_s))
  #   puts page.class
  # end


end
