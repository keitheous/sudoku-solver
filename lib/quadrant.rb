require 'layout'

class Quadrant
  attr_reader :name, :grids, :completion_status
  def initialize(name)
    @completion_status = false
    @name = name
    @grids = []
    
    Layout::QUADRANTS_GRIDS[name.to_sym].each do |grid|
      @grids << Grid.new(grid.to_s)
    end
  end
end
#
# p 'GRIDS'
# x = Quadrant.new('a')
# x.grids.each do |grid|
#   puts '====='
#   puts grid.x_position
#   puts grid.y_position
#   puts grid.name
# end
