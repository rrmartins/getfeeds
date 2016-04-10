require 'rails_helper'

RSpec.describe "feeds/index", type: :view do
  before(:each) do
    assign(:feeds, [
      Feed.create!(
        :titulo => "Titulo",
        :feed_url => "Feed Url",
        :user => ""
      ),
      Feed.create!(
        :titulo => "Titulo",
        :feed_url => "Feed Url",
        :user => ""
      )
    ])
  end

  it "renders a list of feeds" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Feed Url".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
