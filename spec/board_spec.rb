require 'spec_helper'

RSpec.describe Board do
  describe ".initialize" do
    board = Board.new

    it 'creates 9 quadrants' do
      expect(board.quadrants.size).to eq(9)
    end

    it 'creates 9 grids per quadrent' do
      expect(board.quadrants.last.grids.size).to eq(9)
      expect(board.quadrants.first.grids.size).to eq(9)
    end

    it 'creates 81 grids in total' do
      expect(board.grids.size).to eq(81)
    end
  end
end
