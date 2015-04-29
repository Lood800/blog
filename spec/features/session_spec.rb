require 'rails_helper'
require 'faker'

feature 'Session management' do
	scenario 'still connected if remember me is checked' do
		user = create(:user)
		visit	login_path
		fill_in 'Email', with: user.email
		fill_in 'Password', with: user.password
    check 'Remember me on this computer'
    click_button 'Log in'
	end
end 