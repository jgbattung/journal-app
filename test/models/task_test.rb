require "test_helper"

class TaskTest < ActiveSupport::TestCase
  setup do
    @category = Category.create(title: 'New Task', details: 'This is a new task for the day')
  end

  test "should be able to create a new category" do
    new_task = @category.tasks.create(title: 'Task #1', details: 'This is a task', date: Date.today)
    assert new_task.save, 'Created a new task'
  end

  
end
