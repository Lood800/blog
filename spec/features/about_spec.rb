require 'rails_helper'

feature 'about page' do

	scenario 'can only edit detail if logged in' do
		create(:bio)
		visit edit_bio_path('1')
		expect(page).to have_content 'Please log in.'
	end

	scenario 'edit the about page(bio model)' do
		create(:bio)
		visit root_path
		sign_in_as_a_valid_user
		click_link 'About', match: :first
		expect(page).not_to have_content 'About Koos'
		expect(page).not_to have_content 'Birdwatcher'
		expect(page).not_to have_content 'I love birds'
		click_link 'Edit'
		fill_in 'Name', with: 'About Koos'
		fill_in 'Info', with: 'Birdwatcher'
		fill_in 'Body', with: 'I love birds'
		attach_file 'Profile pic', File.join(Rails.root, '/spec/support/example.png')
		click_button 'Submit'
		expect(page).to have_content 'About Koos'
		expect(page).to have_content 'Birdwatcher'
		expect(page).to have_content 'I love birds'
		expect(page).to have_content 'About page was successfully updated'
	end

	scenario 'edit the about page(bio model) without some arguments' do
		create(:bio)
		visit root_path
		sign_in_as_a_valid_user
		click_link 'About', match: :first
		click_link 'Edit'
		fill_in 'Name', with: nil
		fill_in 'Info', with: 'Birdwatcher'
		fill_in 'Body', with: 'I love birds'
		click_button 'Submit'
		expect(page).to have_content "Name can't be blank"
	end

end