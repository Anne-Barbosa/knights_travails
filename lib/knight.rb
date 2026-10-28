# frozen_string_literal: true

require_relative 'board'
require 'set'

# Implements the BFS algorithm to find the shortest path for a knight on a chessboard.
class Knight
  def initialize
    @board = Board.new
  end

  def knight_moves(start, target)
    queue = [[start, [start]]]
    visited = Set.new([start])

    while queue.any?
      current_position, current_path = queue.shift
      
      if current_position == target
        print_path(current_path)
        return current_path
      end

      explore_neighbors(current_position, current_path, queue, visited)
    end
  end

  private

  def explore_neighbors(current_position, current_path, queue, visited)
    @board.valid_moves(current_position).each do |next_move|
      next if visited.include?(next_move)

      visited.add(next_move)
      queue.push([next_move, current_path + [next_move]])
    end
  end

  def print_path(path)
    moves_count = path.length - 1
    puts "You made it in #{moves_count} moves! Here's your path:"
    path.each do |coord|
      puts "  [#{coord[0]},#{coord[1]}]"
    end
  end
end
