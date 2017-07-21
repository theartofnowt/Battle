require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'lib/player.rb')
require File.join(File.dirname(__FILE__), 'lib/game.rb')

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_2_hp = $game.player_2.hp
    @player_1_hp = $game.player_1.hp
    @latest_event = session[:latest_event]
    erb :play
  end

  post '/confirmation' do
    $game.attack($game.current_victim)
    session[:latest_event] = "#{$game.current_player.name} attacked #{$game.current_victim.name}!"
    redirect '/play'
  end

  run! if app_file == $0

end
