feature 'Factorial page' do
  scenario 'Visit the Factorial page' do
    visit '/factorial'
    expect(page).to have_content 'Factorial'
  end

  scenario 'Submit with 10' do
    visit '/factorial'

    fill_in  :factorial_input, with: '10'
    click_button 'Submit'

    expect(page).to have_text('3628800')
  end

end
