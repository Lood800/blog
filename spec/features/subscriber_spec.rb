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

	scenario 'creates a new subscriber' do
		visit root_path
		click_link 'Click here to subscribe to my blog posts'
		fill_in 'Name', with: nil
		fill_in 'Email', with: 'lood800@icloud.com'
		click_button 'Subscribe'
		expect(page).to have_content "Name can't be blank"
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

	scenario 'can only delete subscriber when logged in' do
		create(:subscriber, id: "I9o4IBeG9lt4BYbHj6C8hw")
  	visit subscriber_path("I9o4IBeG9lt4BYbHj6C8hw")
		click_link "Unsubscribe"
		expect(page).to have_content "Please log in."
	end

	scenario 'delete a subscriber' do
		create(:subscriber)
  	visit subscriber_path("1")
		click_link "Unsubscribe"
		# save_and_open_page
		expect(page).to have_content "You are not allowed to unsubscribe this subscriber"
	end

	scenario 'delete a subscriber' do
		create(:subscriber, id: "I9o4IBeG9lt4BYbHj6C8hw")
  	sign_in_as_a_valid_user
  	visit subscriber_path("I9o4IBeG9lt4BYbHj6C8hw")
		click_link "Unsubscribe"
		expect(page).to have_content 'Subscriber has been successfully unsubscribed'
		visit subscriber_path("I9o4IBeG9lt4BYbHj6C8hw")
		click_link "Unsubscribe"
		expect(page).to have_content 'Subscriber has already been unsubscribed'
	end


end
