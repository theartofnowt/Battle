feature "see player 2's hit points" do
  scenario 'see hit points when page loaded' do
    
    sign_in_and_play('Alex', 'Michael')
    expect(page).to have_content 'Michael (100HP)'
  end
end
