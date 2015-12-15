require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup 
    @recipe = Recipe.new(name: "chicken parm", summary: "very tasty", description: "find a good cook book and follow the instructions line by line")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
end 