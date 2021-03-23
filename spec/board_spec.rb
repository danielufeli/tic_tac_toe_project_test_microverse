require_relative '../lib/board'

describe Board do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'creates a board instance' do
      expect(board).to be_an_instance_of Board
    end
  end

  describe '#print_board' do
    it 'should print board' do
      expect(board.print_board).to eql(
        "#{board.board_cell[0]}  |  #{board.board_cell[1]}  |  #{board.board_cell[2]}
     ++++++++++++++
      #{board.board_cell[3]}  |  #{board.board_cell[4]}  |  #{board.board_cell[5]}
     ++++++++++++++
      #{board.board_cell[6]}  |  #{board.board_cell[7]}  |  #{board.board_cell[8]}"
      )
    end
  end
  describe '#update_board' do
    it 'should update board' do
      expect(board.update_board(1, 'o')).to eql('o')
    end
  end
end
