require 'rails_helper'

RSpec.describe "communities/edit", :type => :view do
  before(:each) do
    @community = assign(:community, Community.create!(
      :name => "MyString",
      :about => "MyText",
      :category => "MyString",
      :link => "MyString",
      :rss => "MyString"
    ))
  end

  it "renders the edit community form" do
    render

    assert_select "form[action=?][method=?]", community_path(@community), "post" do

      assert_select "input#community_name[name=?]", "community[name]"

      assert_select "textarea#community_about[name=?]", "community[about]"

      assert_select "input#community_category[name=?]", "community[category]"

      assert_select "input#community_link[name=?]", "community[link]"

      assert_select "input#community_rss[name=?]", "community[rss]"
    end
  end
end
