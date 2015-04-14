require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  # describe "get index" do
  #   it "it populates an array of posts" do
  #     post = FactoryGirl.create(:post)
  #     get :index
  #     expect(assigns(:posts)).to eql([post])
  #   end

  #   it "renders the :index view" do
  #     get :index
  #     expect(response).to render_template :index
  #   end
  # end

  # describe "GET #show" do
  #   it "assigns the requested post to @post" do
  #     post = FactoryGirl.create(:post)
  #     get :show, id: post
  #     assigns(:post).should eq(post)
  #   end
    
  #   it "renders the #show view" do
  #     get :show, id: FactoryGirl.create(:post)
  #     expect(response).to render_template :show
  #   end
  # end

  # describe "POST create" do
  #   context "with valid attributes" do
  #     it "creates a new post" do
  #       expect{post :create, post: FactoryGirl.create(:post)}.to change(Post,:count).by(1)
  #     end
      
      # it "redirects to the new contact" do
      #   sign_in_as_a_valid_user
      #   post :create, post: FactoryGirl.create(:post)
      #   expect(response).to redirect_to Post.last
      # end
    # end
    
    # context "with invalid attributes" do
    #   it "does not save the new contact" do
    #     expect(FactoryGirl.build(:invalid_post)).not_to be_valid
    #   end
      
      # it "re-renders the new method" do
      #   expect(FactoryGirl.build(:invalid_post)).not_to be_valid
      #   expect(response).to render_template :new
      # end
  #   end 
  # end

  before(:each) do 
    sign_in_as_a_valid_user
    @post = FactoryGirl.create(:post)
  end

  describe 'PUT update' do
    let(:attr) do
      { heading: 'African Fish Eagle', body: 'Awesome sighting' }
    end

    before(:each) do
      put :update, id: @post.id, post: attr
      @post.reload
    end

    it { expect(response).to redirect_to(@post) }
    # it { expect(@post.heading).to eq attr[:heading] }
    # it { expect(@post.body).to eq attr[:body] }

  end

end
  
  #   it "redirects to the updated contact" do
  #     put :update, id: @contact, contact: Factory.attributes_for(:contact)
  #     response.should redirect_to @contact
  #   end
  # end
  
  # context "invalid attributes" do
  #   it "locates the requested @contact" do
  #     put :update, id: @contact, contact: Factory.attributes_for(:invalid_contact)
  #     assigns(:contact).should eq(@contact)      
  #   end
    
  #   it "does not change @contact's attributes" do
  #     put :update, id: @contact, 
  #       contact: Factory.attributes_for(:contact, firstname: "Larry", lastname: nil)
  #     @contact.reload
  #     @contact.firstname.should_not eq("Larry")
  #     @contact.lastname.should eq("Smith")
  #   end
    
  #   it "re-renders the edit method" do
  #     put :update, id: @contact, contact: Factory.attributes_for(:invalid_contact)
  #     response.should render_template :edit
  #   end

