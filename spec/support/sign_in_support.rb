module ValidUserRequestHelper

  def sign_in_as_a_valid_user
    @user = FactoryGirl.create :user
    visit login_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
  end

end

RSpec.configure do |config|
  config.include ValidUserRequestHelper
end