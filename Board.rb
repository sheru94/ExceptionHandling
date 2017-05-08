require_relative 'Piece'
require 'byebug'

class Board
  attr_accessor :board
  def initialize(size = 8)
    @board = Board.create_board
  end

  def self.create_board
    grid = Array.new(8) {Array.new(8)}
    [0,1,6,7].each do |row|
      8.times do |col|
        grid[row][col] = Piece.new(1)
      end
    end
    grid
  end

  def [](pos)
    row, col = pos
    self.board[row][col]
  end

  def []=(pos, value)
    row, col = pos
    self.board[row][col] = value
  end

  def move_piece(start_pos, end_pos)
    # debugger
    self[start_pos[0]][start_pos[1]] = self[end_pos[0]][end_pos[1]]#self[end_pos[0]][end_pos[1]] = self[end_pos[0]][end_pos[1]],self[start_pos[0]][start_pos[1]]
    self.board[start_pos]
  end


end
