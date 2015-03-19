require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :heading => "MyString",
      :sub_heading => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_heading[name=?]", "post[heading]"

      assert_select "input#post_sub_heading[name=?]", "post[sub_heading]"

      assert_select "textarea#post_body[name=?]", "post[body]"
    end
  end
end