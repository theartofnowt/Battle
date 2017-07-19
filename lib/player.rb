class Player
  DEFAULT_HP = 100
  DEFAULT_ATTACK = 10
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.reduce_hp(DEFAULT_ATTACK)
  end

  def reduce_hp(amount)
    @hp -= amount
  end

end
