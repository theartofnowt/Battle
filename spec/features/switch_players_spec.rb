feature 'Switching Players' do
scenario 'should switch to current victim' do
  $game.attack($game.current_victim)
  expect($game.current_victim).to eq $game.player_1
end
end
