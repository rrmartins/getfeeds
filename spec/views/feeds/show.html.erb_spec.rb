require 'rails_helper'

RSpec.describe "feeds/show", type: :view do
  before(:each) do
    @feed = assign(:feed, Feed.create!(
      :titulo => "Titulo",
      :feed_url => "Feed Url",
      :user => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Feed Url/)
    expect(rendered).to match(//)
  end
end
