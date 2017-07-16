require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    user = FactoryGirl.create :user
    @post = assign(:post, FactoryGirl.create(:post, author_id: user.id))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[body]"

      assert_select "input[name=?]", "post[author_id]"
    end
  end
end
