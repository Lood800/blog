require 'rails_helper'

feature "Visiting the 'Home' page" do
	before do
		visit root_path
	end

  scenario "Clicking the 'Click here to read more!' link" do
    expect(page).to have_link('Click here to read more!', href: '/about')
  end

  scenario "Home page should have 'Welcome to Lood800' content" do
  	expect(page).to have_content('Welcome to Lood800')
  end

	scenario "Home page should have 'This is the home page of Lood800, a blog about birds' content" do
  	expect(page).to have_content('This is the home page of Lood800, a blog about birds')
  end

  scenario "Clicking the 'LOOD800' link to stay on home page" do
    expect(page).to have_link('Lood800', href: root_path)
  end

  scenario "Clicking the 'About' link" do
    expect(page).to have_link('About', href: about_path)
  end

  scenario "Clicking the 'Contact' link" do
    expect(page).to have_link('Contact', href: contact_path)
  end

  scenario "Contact page title should be 'Home | Lood800'" do
  	expect(page.title).to eq("Home | Lood800")
  end

  scenario "You should have a container on the page" do
  	expect(page).to have_css(".container")
  end

  scenario "Contact button should work and redirect to contact page" do
  	click_link('Contact', match: :first)
		expect(page).to have_content('Call: 082-875-6591')  
	end	

end

feature "Visiting the 'Contact' page" do
	before do
		visit contact_path
	end

	scenario "Contact page should have 'Contact Lood800' content" do
  	expect(page).to have_content('Contact Lood800')
  end

  scenario "Contact page should have 'Call: 082-875-6591' content" do
  	expect(page).to have_content('Call: 082-875-6591')
  end

  scenario "Contact page should have 2 'About' links to click on" do
		expect(page).to have_link("About", :count => 2)
  end

  scenario "Contact page title should be 'Contact | Lood800'" do
  	expect(page.title).to eq("Contact | Lood800")
  end

  scenario "About button should work and redirect to about page" do
  	click_link('About', match: :first)
		expect(page).to have_content('Professional Bird Watcher')  
	end	

end

feature "Visiting the 'About' page" do
	before do
		visit about_path
	end

	scenario "About page should have 'About Lood800' content" do
  	expect(page).to have_content('About Lood800')
  end

  scenario "About page should have 'Professional Bird Watcher' content" do
  	expect(page).to have_content('Professional Bird Watcher')
  end

  scenario "About page should have 2 'Home' links to click on" do
		expect(page).to have_link("Home", :count => 2)
  end

  scenario "About page title should be 'About | Lood800'" do
  	expect(page.title).to eq("About | Lood800")
  end

  scenario "About button should work and redirect to about page" do
  	click_link('Home', match: :first)
		expect(page).to have_content('This is the home page of Lood800, a blog about birds')  
	end	

end












