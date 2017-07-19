require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:player) {double('player')}

  describe '#attack' do
    it 'call the reduce_hp method on the player' do
      expect(player).to receive(:reduce_hp)
      game.attack(player)


    end
  end
end
