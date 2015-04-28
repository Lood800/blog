require 'rails_helper'

feature "Visiting the 'Home' page" do
	before do
		visit root_path
	end

	scenario "Contact button works and redirect to contact page" do
		detail = create(:detail)
  	click_link('Contact', match: :first)
		expect(page).to have_content('Lood800 082-875-6591')	
	end
end
