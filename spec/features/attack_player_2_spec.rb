feature 'Attack player 2' do
  before do
    sign_in_and_play('Alex', 'Michael')
    click_button 'Attack Player 2'
  end

  scenario 'Get confirmation of attack' do
    expect(page).to have_content('Player 1 attacked player 2!')
  end

  scenario 'Player 2 HP reduces by 10' do
    expect(page).to have_content('Michael (90HP)')
  end
end
