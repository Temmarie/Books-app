require 'rails_helper'

RSpec.describe 'Signing In a new user', type: :feature do
  before(:each) do
    @user = User.new(
                     email: 'Trish@email.com',
                     password: 'qwerty',
                     password_confirmation: 'qwerty')
    @user.save
    visit new_user_session_path

    fill_in 'user[email]', with: 'Trish@email.com'
    fill_in 'user[password]', with: 'qwerty'

    click_button 'Log in'
    expect(page).to have_content('GeeksRead')
    visit books_path
    expect(page).to have_content('Add new book')
  end

  scenario 'add book' do
    click_on 'Add new book'
    expect(page).to have_content('New Book')
  end

  scenario 'add book group' do
    visit root_path
    click_on 'Groups'
    expect(page).to have_content('Your Groups')
  end
end
