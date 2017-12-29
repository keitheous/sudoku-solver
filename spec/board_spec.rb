require 'spec_helper'

RSpec.describe Board do
  describe '.initialize' do
    it 'creates the nine quadrants of a sudoku board' do
      sudoku_game = Board.new

      expect(sudoku_game.quadrants.size).to eq(9)
    end
  end
end
