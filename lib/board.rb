require 'layout'
require 'quadrant'
require 'grid'

class Board
  attr_reader :quadrants, :grids

  def initialize
    @quadrants = []
    Layout::QUADRANTS_GRIDS.keys.each { |quadrant| @quadrants << Quadrant.new(quadrant) }

    @grids = []
    quadrants.each {|quadrant| quadrant.grids.each {|grid| grids << grid}}
    p grids
  end
end

# a = x.grids.select{|grid| grid.y_position == "y3"}
