require 'spec_helper'

RSpec.describe Grid do
  describe '.initialize' do
    context 'creating an instance with attributes' do
      grid_1 = Grid.new('x#_y#', value, found)

      it 'contains a name' do
        expect(grid.name).to eq('x#_y#')
      end

      it 'contains an x position' do
        expect(grid.x_position ).to eq('x#')
      end

      it 'contains an y position' do
        expect(grid.y_position ).to eq('y#')
      end

      it 'contains a value' do
        expect(grid.value).to eq(nil)

      end

      it 'contains a found' do
        expect(grid.found).to eq(false)
      end

      it 'contains an array of possibile_values' do
        expect(grid.possibile_values.class).to eq(Array)
        expect(grid.possibile_values).to eq(('0'...'10').to_a)
      end
    end
  end
end
