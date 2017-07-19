require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'lib/player.rb')

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hp
    @latest_event = session[:latest_event]
    erb :play
  end

  post '/confirmation' do
    $player_1.attack($player_2)
    session[:latest_event] = "Player 1 attacked player 2!"
    redirect '/play'
  end

  run! if app_file == $0

end
