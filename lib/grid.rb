class Grid
  attr_reader :name, :value, :found, :x_position, :y_position, :possible_values
  def initialize(name, value = nil, found = false)
    @x_position, @y_position = name.split('_')
    @name = name
    @value = value
    @found = found
    @possible_values = ('1'...'10').to_a
  end
end
