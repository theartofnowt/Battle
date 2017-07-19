require 'player'


describe Player do

  subject(:player) { described_class.new (name) }
  let(:name) {'david'}
  let(:amount) { 10 }

  it "returns name" do
    expect(player.name).to eq name
  end

  it "has HP reduced by 10 when attacked" do
    expect{ player.reduce_hp(amount) }.to change{ player.hp }.by(-amount)
  end

end
