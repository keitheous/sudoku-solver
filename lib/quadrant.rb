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
