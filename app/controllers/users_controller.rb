class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @lists = @user.list.visible_to(current_user)
  end

  def index
    
  end
end
