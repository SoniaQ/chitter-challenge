feature 'homepage' do

  scenario 'a user can visit the homepage' do
    visit '/'
    expect(page).to have_content "Welcome to Chitter!"
    expect(page).to have_content "Sign up or login below."
  end

  scenario 'a user can click the Newbie button' do
    visit '/'
    within(:css, '#button_1') do
      click_button 'Newbie'
      # save_and_open_page
    end
  end

  scenario 'a user can click the Member button' do
    visit '/'
    within(:css, '#button_2') do
      click_button 'Member'
    end
  end

end
