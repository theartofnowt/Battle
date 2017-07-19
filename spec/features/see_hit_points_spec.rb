feature "see player 2's hit points" do
  scenario 'see hit points when page loaded' do
    visit('/')
    fill_in :player_1_name, with: 'Kat'
    fill_in :player_2_name, with: 'Michael'
    click_button 'Submit'
    expect(page).to have_content 'Michael (100HP)'
  end
end
