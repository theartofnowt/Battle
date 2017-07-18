feature 'Enter names' do

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Kat'
    fill_in :player_2_name, with: 'Michael'
    click_button 'Submit'
    expect(page).to have_content 'Kat vs. Michael'
  end
end
