require_relative 'board/board_layout'

class Board
  attr_reader :quadrants

  def initialize
    @quadrants = []
    BoardLayout::QUADRANTS.each {|quad_section| quadrants << quad_section}
  end
end
