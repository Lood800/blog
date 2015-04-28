require 'rails_helper'
require 'faker'

feature 'Subscriber management' do
	scenario 'creates a new subscriber' do
		visit root_path
		click_link 'Click here to subscribe to my blog posts'
		fill_in 'Name', with: 'lodewicus'
		fill_in 'Email', with: 'lood800@icloud.com'
		click_button 'Subscribe'
		expect(page).to have_content 'Successfully subscribed, you will be emailed as soon as there is a new post'
	end

	scenario 'delete a subscriber' do
  	sign_in_as_a_valid_user
  	visit root_path
  	click_link 'Click here to subscribe to my blog posts'
		fill_in 'Name', with: 'lodewicus'
		fill_in 'Email', with: 'lood800@icloud.com'
		click_button 'Subscribe'
		click_link 'Subscribers'
		click_link 'Delete'
		expect(page).to have_content 'Subscriber has been successfully unsubscribed'
	end
end
