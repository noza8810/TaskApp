class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  
  def index 
    @user = User.find(params[:user_id])
    @tasks = Task.all
   
  end
  
  def show
  end
  
  def create
    @user = User.find(params[:user_id])
    @task = @user.tasks.build(task_params)
    if @task.save
      redirect_to user_tasks_url
    else
      render :new
    end
  end 
  

  private
 
    def task_params
      params.require(:task).permit(:task_name, :task_details)
    end
   
end