require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :heading => "Heading",
      :sub_heading => "Sub Heading",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Heading/)
    expect(rendered).to match(/Sub Heading/)
    expect(rendered).to match(/MyText/)
  end
end
