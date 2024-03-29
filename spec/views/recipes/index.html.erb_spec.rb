require 'spec_helper'

describe "recipes/index.html.erb" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :name => "Name",
        :category => "Category",
        :description => "Description"
      ),
      stub_model(Recipe,
        :name => "Name",
        :category => "Category",
        :description => "Description"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
