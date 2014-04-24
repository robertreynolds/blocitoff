class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks.visible_to(current_user)
  end

  def index

  end  
end
