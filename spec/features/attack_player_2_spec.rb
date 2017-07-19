feature 'Attack player 2' do
  scenario 'Get confirmation of attack' do
    sign_in_and_play('Alex', 'Michael')
    click_button 'Attack Player 2'
    expect(page).to have_content('Player 1 attacked player 2!')
  end
end
