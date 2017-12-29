require 'spec_helper'

RSpec.describe Layout do
  describe "class with constants" do
    context "QUADRANTS to representing sudoku's quadrants" do
      it "contains 9 element" do
        expect(Layout::QUADRANTS.size).to eq(9)
      end

      it "has elements from a to i" do
        expect(Layout::QUADRANTS).to eq(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'])
      end
    end

    context "GRIDS to representing sudoku's individual grids" do
      it "contains 81 elements" do
        expect(Layout::GRIDS.size).to eq(81)
      end

      it "has x1_y1 and x9_y9 as first and last elements" do
        expect(Layout::GRIDS.sort.first).to eq('x1_y1')
        expect(Layout::GRIDS.sort.last).to eq('x9_y9')
      end
    end
  end
end
