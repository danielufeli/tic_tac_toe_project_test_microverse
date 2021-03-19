class Board
  attr_reader :board_cell

  def initialize
    @board_cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def print_board
    "#{@board_cell[0]}  |  #{@board_cell[1]}  |  #{@board_cell[2]}
     ++++++++++++++
      #{@board_cell[3]}  |  #{@board_cell[4]}  |  #{@board_cell[5]}
     ++++++++++++++
      #{@board_cell[6]}  |  #{@board_cell[7]}  |  #{@board_cell[8]}"
  end

  def update_board(index, value)
    @board_cell[index.to_i - 1] = value
  end
end
