require 'rubygems'
require 'nokogiri'
# require 'open-uri'

module SquaresHelper
  def randomColor
    return "#" + "%06x" % (rand * 0xffffff)
  end

  def parseNodes(nodes)
    nodes.each do |node|
      print node
    end
  end
end
