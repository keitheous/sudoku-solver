require 'layout'

class Board
  attr_reader :quadrants

  def initialize
    @quadrants = []
    Layout::QUADRANTS.each do |section|
      quadrants.push(section => {})
    end
  end
end
