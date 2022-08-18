require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  
  test "should not save without title" do
    category = Category.new
    category.details = "activities related to programming and web development"
    assert_not category.save, "Saved the category without a title"
  end

  test "should be able to create a new category" do
    category = Category.new
    category.title = "Web Development"
    category.details = "activities related to programming and web development"
    assert category.save, "Created a new category"
  end

  test "should not be able to save duplicate title names" do
    category1 = Category.new
    category2 = Category.new

    category1.title = "Web Development"
    category1.details = "activities related to programming and web development"
    category1.save

    category2.title = "Web Development"
    category2.details = "activities related to coding"
    assert_not category2.save, "Saved the Category with a title that is already used"
  end

  test "should not be able to save without details" do
    category = Category.new
    category.title = "Web Development"
    assert_not category.save, "Saved the category without a description"
  end

end
