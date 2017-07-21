feature 'looser' do
   before do
     sign_in_and_play('Alex', 'Michael')
     19.times {click_button 'Attack'}
   end

   scenario 'when Player 2 HP is 0, you loose message shown!' do
    expect(page).to have_content('Michael, You Loose!')
  end

end
