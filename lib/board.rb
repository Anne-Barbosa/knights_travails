# frozen_string_literal: true

# Represents the chessboard and handles valid coordinate checks and knight moves.
class Board
  MOVES = [[2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2], [1, -2], [2, -1]].freeze

  def valid_coordinate?(coords)
    return false unless coords.is_a?(Array) && coords.size == 2
    return false unless coords.all? { |c| c.is_a?(Integer) }

    coords.all? { |c| c.between?(0, 7) }
  end

  def valid_moves(coords)
    MOVES.map { |dx, dy| [coords[0] + dx, coords[1] + dy] }
         .select { |move| valid_coordinate?(move) }
  end
end
