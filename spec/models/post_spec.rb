require 'rails_helper'

RSpec.describe Post, type: :model do

	describe "factory" do
		it "has a valid factory" do
			expect(FactoryGirl.create(:post)).to be_valid
		end
	end

	describe "validations" do
    it { is_expected.to validate_presence_of(:heading) }
    it { is_expected.to validate_presence_of(:body) }
  end

  before :each do
		@post ||= FactoryGirl.create :post
	end


	describe ' #new' do
		it "returns a new post object with correct attributes" do
			expect(@post).to be_an_instance_of Post
			expect(@post.heading).to eql "Eagle"
			expect(@post.body).to eql "Awesome fish eagle"
	  end
	  it "is not a valid entry without a heading" do
	  	expect(FactoryGirl.build(:post, heading: nil)).not_to be_valid
	  end
	  it "is not a valid entry without a body" do
	  	expect(FactoryGirl.build(:post, body: nil)).not_to be_valid
	  end

	end

	describe "edit" do
		it "only heading" do
			@post.heading = "Swallow"
			expect(@post.heading).to eql "Swallow"
			expect(@post.body).to eql "Awesome fish eagle"
		end
		it "only sub_heading" do
			@post.sub_heading = "Pretoria"
			expect(@post.sub_heading).to eql "Pretoria"
			expect(@post.heading).to eql "Eagle"
		end
		it "only body" do
			@post.body = "New fish eagle"
			expect(@post.body).not_to eql "Awesome fish eagle"
			expect(@post.heading).to eql "Eagle"
		end
	end

	describe "#delete" do
		it "should be deleted" do
			expect{ @post.delete }.to change{ Post.count }.by(-1)
		end
	end


end
