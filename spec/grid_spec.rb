require 'spec_helper'

RSpec.describe Grid do
  describe '.initialize' do
    context 'creating an instance with attributes' do
      grid_1 = Grid.new('x#_y#', nil, false)

      it 'contains a name' do
        expect(grid_1.name).to eq('x#_y#')
      end

      it 'contains an x position' do
        expect(grid_1.x_position ).to eq('x#')
      end

      it 'contains an y position' do
        expect(grid_1.y_position ).to eq('y#')
      end

      it 'contains a value' do
        expect(grid_1.value).to eq(nil)

      end

      it 'contains a found boolean' do
        expect(grid_1.found).to eq(false)
      end

      it 'contains an array of possibile_values' do
        expect(grid_1.possible_values.class).to eq(Array)
        expect(grid_1.possible_values).to eq(('1'...'10').to_a)
      end
    end
  end
end
