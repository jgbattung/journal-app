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

  test "should create task" do
    # @task = @category.tasks.create(title: 'New Task', details: 'this is a new task', date: Date.today)
    assert_difference("Task.count") do
      post category_tasks_path(@category), params: { task: { title:'New Task',  details:'This is a new task', date: Date.today } }
    end

    assert_redirected_to category_tasks_path(@category)
  end

  test "should show task" do
    task = @category.tasks.create(title: 'New Task', details: 'this is a new task', date: Date.today)
    get category_task_path(@category, task.id)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_task_path(@category)
    assert_response :success
  end


  # test "should destroy task" do
  #   assert_difference("@category.tasks.count", -1) do
  #     delete category_task_path(@category, task.id)
  #   end

  #   assert_redirected_to category_tasks_path
  # end

end
