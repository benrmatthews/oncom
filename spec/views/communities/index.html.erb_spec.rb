require 'rails_helper'

RSpec.describe "communities/index", :type => :view do
  before(:each) do
    assign(:communities, [
      Community.create!(
        :name => "Name",
        :about => "MyText",
        :category => "Category",
        :link => "Link",
        :rss => "Rss"
      ),
      Community.create!(
        :name => "Name",
        :about => "MyText",
        :category => "Category",
        :link => "Link",
        :rss => "Rss"
      )
    ])
  end

  it "renders a list of communities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Rss".to_s, :count => 2
  end
end
