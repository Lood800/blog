require 'rails_helper'

feature "Visiting the 'Home' page" do
	before do
		visit root_path
	end

	scenario "Contact button should work and redirect to contact page" do
  	click_link('Contact', match: :first)
		expect(page).to have_content('Call: 082-875-6591')	
	end
end
