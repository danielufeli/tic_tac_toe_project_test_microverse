require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  game = Game.new
  game.player1 = Player.new('Daniel', 'o')
  game.player2 = Player.new('James', 'x')

  describe '#valid_move' do
    it 'should return false when the input is a negative integer' do
      expect(game.send(:valid_move, -5)).to eql(false)
    end

    it 'should return false when the input is greater than 9' do
      expect(game.send(:valid_move, 10)).to eql(false)
    end

    it 'should return true when the input is between 1-9' do
      expect(game.send(:valid_move, 7)).to eql(true)
    end
  end

  describe '#game_ended' do
    it 'should return true if the play count is 9. (a draw)' do
      game.board.board_cell = %w[x o x o x o x o x]
      expect(game.send(:game_ended, 9)).to eql(true)
    end

    it 'should return true if there is a winner and play count is at least 5.' do
      expect(game.game_ended(5)).to be true
    end

    it 'should return false if the play count is less than 5.' do
      expect(game.game_ended(2)).to be false
    end
  end
end
