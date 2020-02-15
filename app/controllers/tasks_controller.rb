class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  
  
  def index 
    @tasks = Task.all
    @user = User.find(params[:user_id])
  end
  
  def show
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to user_tasks_url
    else
      render :new
    end
  end 
end

private
 
  def task_params
    params.require(:task).permit(:task_name, :task_details)
  end
