require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  # run before any test
  def setup
    @category = Category.new(name: "sports")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    cat2 = Category.new(name: "sports")
    assert_not cat2.valid?
  end

  test "name should not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "name should not be too short" do
    @category.name = "a" * 2
    assert_not @category.valid?
  end
end