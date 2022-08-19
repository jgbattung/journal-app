require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  test "should be able to create a new category" do
    category = Category.new
    category.title = "Web Development"
    category.details = "activities related to programming and web development"
    assert category.save, "Created a new category"
  end
  
  test "should not save without title" do
    category = Category.new
    category.details = "activities related to programming and web development"
    assert_not category.save, "Saved the category without a title"
  end

  test "should be able to reject a category title with more than 20 characters" do
    category = Category.new
    category.title = "Web Development Bootcamp Avion School"
    category.details = "activities related to programming and web development"
    assert_not category.save, "Saved a title with more than 20 characters"
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
    assert_not category.save, "Saved the category without details"
  end

  test "should be able to reject details with less than 10 characters" do
    category = Category.new
    category.title = "Web Development"
    category.details = "Random"
    assert_not category.save, "Added details with less than 10 characters"
  end

  test "should be able to reject details with more than 100 characters" do
    category = Category.new
    category.title = "Web Development"
    category.details = "Random is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    assert_not category.save, "Added details with more than 100 characters"
  end

end
