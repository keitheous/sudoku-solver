class Grid
  attr_reader :name, :value, :found, :x_position, :y_position, :possible_values
  def initialize(name, value = nil, found = false)
    @x_position, @y_position = name.split('_')
    @name = name
    @value = value
    @found = found
    @possible_values = ('1'...'10').to_a
  end

  def update_grid(value)
    @possible_values.delete(value) if @possible_values.include?(value)

    if @possible_values.size == 1
      @value = @possible_values.first
      @found = true
    end
  end
end
