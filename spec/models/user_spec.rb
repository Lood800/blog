require 'rails_helper'

RSpec.describe User, type: :model do

	before :each do
		@user ||= FactoryGirl.create :user
	end

	describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_length_of(:email) }

    it { is_expected.to validate_length_of(:password) }
  end

	describe "factory" do
		it "has a valid factory" do
			expect(@user).to be_valid
		end
	end

	describe '#new' do

		it "returns a new user object" do
			expect(@user).to be_an_instance_of User
	  end

	  it "is not a valid user without a name" do
	  	expect(FactoryGirl.build(:user, name: nil)).not_to be_valid
	  end

	  it "is not a valid user without an email" do
	  	expect(FactoryGirl.build(:user, email: nil)).not_to be_valid
	  end
	end

	describe "name" do
		it "returns the correct name" do
			expect(@user.name).to eql "koos"
		end
	end

	describe "email" do
		it "returns the correct email" do
			expect(@user.email).to eql "koos@gmail.com"
		end
	end

	describe "password" do
		it "returns the correct password" do
			expect(@user.password).to eql "password"
		end
	end

	describe "edit" do
		it "should edit name" do
			@user.name = "lood"
			expect(@user.name).to eql "lood"
		end
		
		it "should be successful" do
			@user.email = "lodewicus@gmail.com"
			expect(@user.email).to eql "lodewicus@gmail.com"
		end
		
	end

	describe "#delete" do
		it "should be deleted" do
			expect{ @user.delete }.to change{ User.count }.by(-1)
		end
	end
	
end
