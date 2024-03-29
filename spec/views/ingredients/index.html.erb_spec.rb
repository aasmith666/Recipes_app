require 'spec_helper'

describe "ingredients/index.html.erb" do
  before(:each) do
    assign(:ingredients, [
      stub_model(Ingredient,
        :name => "Name",
        :amount => "Amount",
        :recipe_id => 1
      ),
      stub_model(Ingredient,
        :name => "Name",
        :amount => "Amount",
        :recipe_id => 1
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
