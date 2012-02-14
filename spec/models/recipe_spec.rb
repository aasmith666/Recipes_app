require 'spec_helper'

#describe Recipe do
  #pending "add some examples to (or delete) #{__FILE__}"
#end

describe User do
  .
  .
  .
  describe "ingredient associations" do

    before(:each) do
      @recipe = Recipe.create(@attr)
    end

    it "should have an ingredient attribute" do
      @recipe.should respond_to(:ingredients)
    end
  end
end
