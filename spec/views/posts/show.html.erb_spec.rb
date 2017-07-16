require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    user = FactoryGirl.create :user
    @post = assign(:post, FactoryGirl.create(:post, author_id: user.id))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{@post.title}/)
    expect(rendered).to include(@post.body)
    expect(rendered).to match(/#{@post.author_name}/)
  end
end
