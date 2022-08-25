class TasksController < ApplicationController
    before_action :get_category

def index
    @tasks = @category.tasks
end

def show
    @task = Task.find(params[:id])
end

def new
    @task = @category.tasks.build
end

def edit
    @task = Task.find(params[:id])
end

def create
    @task = @category.tasks.build(task_params)
    if @task.save
        redirect_to category_tasks_path, notice: 'Task was succesfully added'
    else
        render :new
    end
end

def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
        redirect_to category_tasks_path, notice: 'Task successfully edited'
    end
end

def destroy
    @task = Task.find(params[:id])
    if @task.present?
        @task.destroy
    end
    redirect_to category_tasks_path, notice: 'Task successfully deleted'
end

private

def get_category
    @category = Category.find(params[:category_id])
end

def task_params
    params.require(:task).permit(:title, :details, :date, :category_id)
end

end
