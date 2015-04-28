require 'rails_helper'

feature "Static pages" do
	scenario "link to about page" do
		bio = create(:bio)
		visit root_path

		expect(page).to_not have_content 'About Lood800'
    expect(page).to_not have_content 'Professional Bird Watcher'

    within('header') do
        click_link 'About'
    end

    expect(page).to have_content 'About Lood800'
    expect(page).to have_content 'Professional bird watcher'

  end

  scenario "link to contact page" do
  	detail = create(:detail)
  	bio = create(:bio)
  	visit about_path

  	expect(page).to_not have_content 'Contact Lood800'
    expect(page).to_not have_content '082-875-6591'

  	within('header') do
        click_link 'Contact'
    end

    expect(page).to have_content 'Contact Lood800'
    expect(page).to have_content '082-875-6591'

  end

  scenario "link to home page" do
  	detail = create(:detail)
  	visit contact_path

  	expect(page).to_not have_content 'Welcome to Lood800'
    expect(page).to_not have_content 'This is the home page of Lood800, a blog about birds'

  	within('footer') do
        click_link 'Home'
    end

    expect(page).to have_content 'Welcome to Lood800'
    expect(page).to have_content 'This is the home page of Lood800, a blog about birds'

  end

end





