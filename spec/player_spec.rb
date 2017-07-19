require 'player'


describe Player do

  subject(:player) { described_class.new (name) }
  let(:name) {'david'}

  it "returns name" do
    expect(player.name).to eq name
  end

  it "has HP reduced by 10 when attacked" do
    expect{ described_class.new(name).attack(player) }.to change{ player.hp }.by(-10)
  end

end
