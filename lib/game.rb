require_relative 'player'
require_relative 'board'

class Game
  WINNING_COMBO = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]
  ].freeze

  attr_accessor :board, :player1, :player2, :winner

  def initialize
    @board = Board.new
    @player1 = nil
    @player2 = nil
    @winner = nil
  end

  def valid_move(index)
    index.between?(1, 9) && @board.board_cell[index - 1].is_a?(Numeric)
  end

  def game_ended(turn_count)
    return false if turn_count < 5

    WINNING_COMBO.each do |arr_val|
      if @player1.square.intersection(arr_val) == arr_val
        @winner = @player1.name
        return true
      elsif @player2.square.intersection(arr_val) == arr_val
        @winner = @player2.name
        return true
      end
    end
    @board.board_cell.all?(String) ? true : false
  end
end
