require 'rails_helper'
require 'faker'

feature 'User Management' do
	before :each do
		visit root_path
  	sign_in_as_a_valid_user
  	click_link 'Users'
  	# save_and_open_page
  end

  scenario 'redirect if user not logged in' do
    click_link 'Log out'
    visit new_user_path
  end

  scenario 'wrong password or email' do
    click_link 'Log out'
    visit login_path
    fill_in 'Email', with: 'koos@gmail.com'
    fill_in 'Password', with: "kooskoos"
    click_button 'Log in'
    # save_and_open_page
    expect(page).to have_content 'Invalid email/password combination'
  end

  scenario 'trying to access wrong user' do
    visit user_path('100000')
    expect(page).to have_content 'Invalid user'
  end

  scenario 'creates a new user' do
  	click_link 'New User'
  	fill_in 'Name', with: Faker::Name.name
  	fill_in 'Email', with: Faker::Internet.email
  	fill_in 'Password', with: 'password'
  	fill_in 'Password Confirmation', with: 'password'
  	click_button 'Submit'
  	expect(page).to have_content 'User was successfully created'
  end

  scenario 'does not create a new user without a valid email address' do
    click_link 'New User'
    fill_in 'Name', with: Faker::Name.name
    fill_in 'Email', with: nil
    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Submit'
    expect(page).to have_content "Email can't be blank"
  end

  scenario 'edit current user' do
  	click_link 'Users'
  	expect(page).to have_content 'Edit'
  	click_link 'Edit'
  	fill_in 'Name', with: 'Lodewicus'
  	fill_in 'Email', with: 'lodewicus@gmail.com'
  	fill_in 'Password', with: 'password'
  	fill_in 'Password Confirmation', with: 'password'
  	click_button 'Submit'
  	expect(page).to have_content 'Lodewicus'
  	expect(page).to have_content 'lodewicus@gmail.com'
  end

  scenario 'edit current user with wrong details' do
    click_link 'Users'
    expect(page).to have_content 'Edit'
    click_link 'Edit'
    fill_in 'Name', with: 'Lodewicus'
    fill_in 'Email', with: nil
    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Submit'
    expect(page).to have_content "Email can't be blank"
  end

  scenario 'can not delete last user' do
  	click_link 'Delete'
  	expect(page).to have_content 'You can not delete the last user'
  end

  scenario 'delete user' do
  	click_link 'New User'
  	fill_in 'Name', with: Faker::Name.name
  	fill_in 'Email', with: Faker::Internet.email
  	fill_in 'Password', with: 'password'
  	fill_in 'Password Confirmation', with: 'password'
  	click_button 'Submit'
  	expect(page).to have_content 'User was successfully created'
  	click_link 'Delete', match: :first
  	expect(page).to have_content 'ser was successfully destroyed'
  	# save_and_open_page
  end
end