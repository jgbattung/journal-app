require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = Category.create(title: 'Web Development', details: 'Listed here are the tasks related to Web Dev')
  end

  test "should get index" do
    get category_tasks_path(@category)
    assert_response :success
  end

  test "should get new" do 
    get new_category_task_path(@category)
    assert_response :success
  end

  # test "should create category" do
  #   assert_difference("Test.count") do
  #     post category_tasks_path(@category), params: { task: { title: 'New task', details: 'This is a new task', date: Date.today } }
  #   end

  #   assert_redirected_to category_tasks_path(@category)
  # end

end
