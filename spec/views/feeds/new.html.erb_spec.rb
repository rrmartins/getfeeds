require 'rails_helper'

RSpec.describe "feeds/new", type: :view do
  before(:each) do
    assign(:feed, Feed.new(
      :titulo => "MyString",
      :feed_url => "MyString",
      :user => ""
    ))
  end

  it "renders new feed form" do
    render

    assert_select "form[action=?][method=?]", feeds_path, "post" do

      assert_select "input#feed_titulo[name=?]", "feed[titulo]"

      assert_select "input#feed_feed_url[name=?]", "feed[feed_url]"

      assert_select "input#feed_user[name=?]", "feed[user]"
    end
  end
end
