require 'rails_helper'

RSpec.describe 'Creating a new book', type: :feature do
  before(:each) do
    @user = User.new(
      name: 'Trish',
      email: 'Trish@email.com',
      password: 'qwerty',
      password_confirmation: 'qwerty'
    )
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
    expect(page).to have_content('Description')
  end

  scenario 'does not create book with invalid inputs' do
    click_on 'Add new book'
    fill_in 'Title', with: 'P'
    click_button 'Create Book'
    expect(page).to have_content('Title is too short (minimum is 3 characters)')
  end
end
