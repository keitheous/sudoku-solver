require 'layout'
require 'quadrant'
require 'grid'

class Board
  attr_reader :quadrants

  def initialize
    @quadrants = []
    Layout::QUADRANTS_GRIDS.keys.each { |quadrant| @quadrants << Quadrant.new(quadrant) }
  end
end
