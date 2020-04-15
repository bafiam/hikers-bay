require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  let(:user_fullName) { 'steve ' }
  let(:user_username) { 'steve01 ' }
  let(:user_password) { '123456' }
  let(:user_password_confirmation) { '123456' }

  scenario 'Should register as a user' do
    visit signup_path
    fill_in 'user[fullName]', with: user_fullName
    page.attach_file('user[photo]', Rails.root + 'app/assets/images/arnold.jpg')
    page.attach_file('user[coverimage]', Rails.root + 'app/assets/images/clapton.jpg')
    fill_in 'user[username]', with: user_username
    fill_in 'user[password]', with: user_password
    fill_in 'user[password_confirmation]', with: user_password_confirmation
    click_button 'Create my account'
    expect(page).to have_content('HOME')
    expect(page).to have_content('CONNECT')
    expect(page).to have_content('DISCOVER')
    expect(page).to have_content('PROFILE')
    expect(page).to have_content('STATISTICS')
  end
  scenario 'Should login' do
    visit signup_path
    fill_in 'user[fullName]', with: user_fullName
    page.attach_file('user[photo]', Rails.root + 'app/assets/images/arnold.jpg')
    page.attach_file('user[coverimage]', Rails.root + 'app/assets/images/clapton.jpg')
    fill_in 'user[username]', with: user_username
    fill_in 'user[password]', with: user_password
    fill_in 'user[password_confirmation]', with: user_password_confirmation
    click_button 'Create my account'
    visit login_path
    fill_in 'session[username]', with: user_username
    fill_in 'session[password]', with: user_password
    click_button 'Log in'
    expect(page).to have_content('HOME')
    expect(page).to have_content('CONNECT')
    expect(page).to have_content('DISCOVER')
    expect(page).to have_content('PROFILE')
    expect(page).to have_content('STATISTICS')
  end
end
