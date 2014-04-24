class TasksController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @tasks = current_user.tasks.order(sort_column + " " + sort_direction)
  end

  def new
  sort_direction
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

private

def sort_column
  Task.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end


end
