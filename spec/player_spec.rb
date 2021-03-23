require_relative '../lib/player'

describe Player do
  describe '#initialize' do
    let(:player1) { Player.new('Daniel', 'x') }

    it "return the player's name" do
      expect(player1.name).to eql('Daniel')
    end

    it "return the player's icon" do
      expect(player1.icon).to eql('x')
    end

    it 'return name modified ' do
      player1.name = 'James'
      expect(player1.name).to eql('James')
    end

    it "return the player's modified icon " do
      player1.icon = 'o'
      expect(player1.icon).to eql('o')
    end
  end
end
