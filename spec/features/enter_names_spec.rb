feature 'Enter names' do

  scenario 'submitting names' do
    sign_in_and_play('Alex', 'Michael')
    expect(page).to have_content 'Alex (100HP) vs. Michael (100HP)'
  end
end
