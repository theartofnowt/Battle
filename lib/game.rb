class Game
  DEFAULT_ATTACK = 10

  attr_reader :player_1, :player_2, :current_victim

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_victim = player_2
  end

  def attack(player)
   player.reduce_hp(DEFAULT_ATTACK)
   switch_players
  end

  def switch_players
    @current_victim == player_1 ? @current_victim = player_2 : @current_victim = player_1
  end

end
