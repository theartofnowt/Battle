require 'game'

describe Game do
  let(:player_1)  { double :player }
  let(:player_2)  { double :player }
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player) {double('player')}

  describe '#attack' do
    it 'call the reduce_hp method on the player' do
      expect(player_2).to receive(:reduce_hp)
      game.attack(player_2)


    end
  end
end
