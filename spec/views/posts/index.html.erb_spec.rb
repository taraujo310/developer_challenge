require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    @user = FactoryGirl.create :user
    assign(:posts, FactoryGirl.create_list(:post, 2, title: 'Title', body: 'MyText', author_id: @user.id))
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Title", :count => 2
    assert_select "tr>td", :text => "MyText", :count => 2
    assert_select "tr>td", :text => @user.name, :count => 2
  end
end
