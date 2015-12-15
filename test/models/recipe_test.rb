require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup 
    @recipe = Recipe.new(name: "chicken parm", summary: "very tasty", description: "find a good cook book and follow the instructions line by line")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end
end 