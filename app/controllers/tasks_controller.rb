class TasksController < ApplicationController
  
  def index
    @tasks = current_user.tasks
    
  end

  def new
    @task = Task.new
   
  end

  def show
    @task = Task.find(params[:id])
  end
  def edit
    @tasks = Task.find(params[:id])
  end

  def destroy
  end

  def create
    #@user = User.find(params[:user_id])
    @task = Task.new(params[:task])
    @task.user = current_user
    @task.due_date = (Date.today + 7.days)
    
    if @task.save
      flash[:notice] = "New task saved!"
      redirect_to(user_tasks_path(current_user))
    else
      flash[:error] = "Error saving task. Please try again."
      render :new
    end
  end

  def complete
    #mark all tasks as complete
    redirect_to user_tasks_path
  end



end
