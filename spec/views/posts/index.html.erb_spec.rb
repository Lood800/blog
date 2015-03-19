require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :heading => "Heading",
        :sub_heading => "Sub Heading",
        :body => "MyText"
      ),
      Post.create!(
        :heading => "Heading",
        :sub_heading => "Sub Heading",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Heading".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
