feature 'Run length page' do
  scenario 'Visit the Run length page' do
    visit '/run_length'
    expect(page).to have_content 'Run length'
  end

  scenario 'Submit with string' do
    visit '/run_length'

    fill_in  :run_length_input, with: 'aaabbbbccccca'
    click_button 'Submit'

    expect(page).to have_text('3a4b5c1a')
  end

end
