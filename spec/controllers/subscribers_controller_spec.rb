require 'rails_helper'

RSpec.describe SubscribersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      create(:subscriber)
      expect(response).to have_http_status(:success)
    end
  end
end
