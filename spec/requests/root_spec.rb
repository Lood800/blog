require 'rails_helper'

RSpec.describe "Root", type: :request do
  describe "GET /root" do
    it "should get the home page" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  feature "page" do
  	get root_path
    it { should have_selector('h1',    text: "Welcome to Lood800") }
    it { should have_selector('title', text: "Home | Lood800") }
    it { should have_link('Click here to read more!', href: '/about') }
  end
end
