require 'rails_helper'

RSpec.describe "feeds/edit", type: :view do
  before(:each) do
    @feed = assign(:feed, Feed.create!(
      :titulo => "MyString",
      :feed_url => "MyString",
      :user => ""
    ))
  end

  it "renders the edit feed form" do
    render

    assert_select "form[action=?][method=?]", feed_path(@feed), "post" do

      assert_select "input#feed_titulo[name=?]", "feed[titulo]"

      assert_select "input#feed_feed_url[name=?]", "feed[feed_url]"

      assert_select "input#feed_user[name=?]", "feed[user]"
    end
  end
end
