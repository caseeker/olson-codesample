feature 'Reverse page' do
  scenario 'Visit the Reverse page' do
    visit '/reverse'
    expect(page).to have_content 'Reverse string'
  end

  scenario 'Submit with string' do
    visit '/reverse'

    fill_in  :reverse_string, with: 'Reverse'
    click_button 'Reverse!'

    expect(page).to have_text('esreveR')
  end

end
