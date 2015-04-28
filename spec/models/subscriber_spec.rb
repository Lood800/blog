require 'rails_helper'

RSpec.describe User, type: :model do

	before :each do
		@subscriber ||= create(:subscriber)
	end

	describe "validations" do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_length_of(:email) }
  end

  describe "factory" do
		it "has a valid factory" do
			expect(@subscriber).to be_valid
		end
	end

	describe '#new' do

		it "returns a new subscriber object" do
			expect(@subscriber).to be_an_instance_of Subscriber
	  end

	  it "is not a valid subscriber without a name" do
	  	expect(build(:subscriber, name: nil)).not_to be_valid
	  end

	  it "is not a valid subscriber without an email" do
	  	expect(build(:subscriber, email: nil)).not_to be_valid
	  end

	  it "is not a valid subscriber without an unique email" do
	  	expect(build(:subscriber)).not_to be_valid
	  end

	  it "is not valid if name is longer than 50 characters" do
	  	expect(build(:subscriber, name: 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ')).not_to be_valid
	  end

	  it "is not valid without a valid email address" do
	  	expect(build(:subscriber, email: 'koos@koos'))
	  end

	end


	describe "name" do
		it "returns the correct name" do
			expect(@subscriber.name).to eql "jan van der merwe"
		end
	end

	describe "email" do
		it "returns the correct email" do
			expect(@subscriber.email).to eql "jan@gmail.com"
		end
	end

	describe "edit" do
		it "should edit name" do
			@subscriber.name = "lood"
			expect(@subscriber.name).to eql "lood"
		end
		
		it "should be successful" do
			@subscriber.email = "lodewicus@gmail.com"
			expect(@subscriber.email).to eql "lodewicus@gmail.com"
		end
		
	end

	describe "#delete" do
		it "should be deleted" do
			expect{ @subscriber.delete }.to change{ Subscriber.count }.by(-1)
		end
	end

end
