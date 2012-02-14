require 'spec_helper'

describe "recipes/show.html.erb" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "Name",
      :category => "Category",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
