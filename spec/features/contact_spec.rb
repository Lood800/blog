require 'rails_helper'

feature 'contact page' do

	scenario 'can only edit detail if logged in' do
		create(:detail)
		visit edit_detail_path('1')
		expect(page).to have_content 'Please log in.'
	end

	scenario 'edit the contact page(detail model)' do
		create(:detail)
		visit root_path
		sign_in_as_a_valid_user
		click_link 'Contact', match: :first
		expect(page).not_to have_content 'Contact Koos'
		expect(page).not_to have_content '0800-000-000'
		expect(page).not_to have_content 'koos@koos.gmail'
		click_link 'Edit'
		fill_in 'Name', with: 'Contact Koos'
		fill_in 'Phone', with: '0800-000-000'
		fill_in 'Email', with: 'koos@koos.com'
		click_button 'Submit'
		expect(page).to have_content 'Contact Koos'
		expect(page).to have_content '0800-000-000'
		expect(page).to have_content 'koos@koos.com'
		expect(page).to have_content 'Contact page was successfully updated'
	end

	scenario 'edit the contact page(detail model) without the right arguments' do
		create(:detail)
		visit root_path
		sign_in_as_a_valid_user
		click_link 'Contact', match: :first
		click_link 'Edit'
		fill_in 'Name', with: nil
		fill_in 'Phone', with: '0800-000-000'
		fill_in 'Email', with: 'koos@koos.com'
		click_button 'Submit'
		expect(page).to have_content "Name can't be blank"
	end
end