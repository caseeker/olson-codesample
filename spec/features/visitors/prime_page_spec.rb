feature 'Prime page' do
  scenario 'Visit the Prime page' do
    visit '/prime'
    expect(page).to have_content 'Prime'
  end

  scenario 'Submit with 10' do
    visit '/prime'

    fill_in  :prime_input, with: '10'
    click_button 'Submit'

    expect(page).to have_text('false')
  end

  scenario 'Submit with 3' do
    visit '/prime'

    fill_in :prime_input, with: '3'
    click_button 'Submit'

    expect(page).to have_text('true')
  end

end
