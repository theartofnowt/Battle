feature 'Enter names' do

  scenario 'submitting names' do
    sign_in_and_play('Alex', 'Michael')
    expect(page).to have_content 'Alex vs. Michael'
  end
end
