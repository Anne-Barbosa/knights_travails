# frozen_string_literal: true

require_relative '../lib/knight'

describe Knight do
  describe '#knight_moves' do
    it 'returns the short path with 1 move' do
      knight = Knight.new

      expect(knight.knight_moves([0, 0], [1, 2])).to eq([[0, 0], [1, 2]])
    end

    it 'returns the shortest path for a longer distance' do
      knight = Knight.new
      result = knight.knight_moves([0, 0], [3, 3])

      expect(result.size).to eq(3)
      expect(result.first).to eq([0, 0])
      expect(result.last).to eq([3, 3])
    end
  end
end
