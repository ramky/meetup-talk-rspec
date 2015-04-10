require 'rails_helper'

feature 'User signs in' do
  background do
    User.create(username: 'johndoe', name: 'John Doe', email: 'john.doe@example.com')
  end

  scenario 'with existing username' do
    visit root_path
    #save_and_open_page
    fill_in :username, with: 'johndoe'
    click_button 'Sign in'

    expect(page).to have_content 'John Doe'
  end
end
