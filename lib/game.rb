class Game
  DEFAULT_ATTACK = 10

  def attack(player)
   player.reduce_hp(DEFAULT_ATTACK)
  end

end
