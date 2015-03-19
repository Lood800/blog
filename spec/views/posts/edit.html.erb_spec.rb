require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :heading => "MyString",
      :sub_heading => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_heading[name=?]", "post[heading]"

      assert_select "input#post_sub_heading[name=?]", "post[sub_heading]"

      assert_select "textarea#post_body[name=?]", "post[body]"
    end
  end
end
