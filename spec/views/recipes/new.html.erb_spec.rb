require 'spec_helper'

describe "recipes/new.html.erb" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :category => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path, :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "input#recipe_category", :name => "recipe[category]"
      assert_select "input#recipe_description", :name => "recipe[description]"
    end
  end
end
