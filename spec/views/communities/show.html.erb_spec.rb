require 'rails_helper'

RSpec.describe "communities/show", :type => :view do
  before(:each) do
    @community = assign(:community, Community.create!(
      :name => "Name",
      :about => "MyText",
      :category => "Category",
      :link => "Link",
      :rss => "Rss"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Rss/)
  end
end
