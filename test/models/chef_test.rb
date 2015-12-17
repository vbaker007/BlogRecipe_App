require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "john", email: "john@example.com")
  end

  test "chef should be valid" do
    assert @chef.valid?
  end

  test "chefname shoould be present" do
    @chef.chefname = " "
    assert_not @chef.valid?
  end

  test "chefname should not be too long" do
    @chef.chefname = "a" * 41
    assert_not @chef.valid?
  end

  test "chefname should not too short" do
    @chef.chefname = "aa"
    assert_not @chef.valid?
  end
end