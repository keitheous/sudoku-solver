require 'spec_helper'
require 'layout'

RSpec.describe Quadrant do
  describe ".initialize" do
      context 'creating quadrant' do
        quadrant_a = Quadrant.new('a')

        it 'contains 9 grids' do
          expect(quadrant_a.grids.size).to eq(9)
        end

        it 'has a name' do
          expect(quadrant_a.name).to eq('a')
        end

        it 'has a completion status, which is false by default' do
          expect(quadrant_a.completion_status).to eq(false)
        end
      end
  end
end
