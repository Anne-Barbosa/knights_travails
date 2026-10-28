# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  describe '#valid_coordinate?' do
    it 'returns true for valid coordinates on the border' do
      board = Board.new

      expect(board.valid_coordinate?([0, 0])).to be true
      expect(board.valid_coordinate?([7, 7])).to be true
    end

    it 'returns false when coordinates are out of bounds' do
      board = Board.new

      expect(board.valid_coordinate?([-1, 2])).to be false
      expect(board.valid_coordinate?([8, 4])).to be false
    end
  end

  describe 'valid_moves' do
    it 'returns [2, 1] and [1, 2] when the horse is in [0, 0]' do
      board = Board.new

      expect(board.valid_moves([0, 0])).to match_array([[2, 1], [1, 2]])
    end

    it 'returns 8 valid positions when the horse is on the center [3, 3]' do
      board = Board.new
      expected_moves = [[5, 4], [4, 5], [2, 5], [1, 4],
                        [1, 2], [2, 1], [4, 1], [5, 2]]

      expect(board.valid_moves([3, 3])).to match_array(expected_moves)
      expect(board.valid_moves([3, 3]).size).to eq(8)
    end
  end
end
