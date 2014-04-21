class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
    authorize! :create, List
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @List = List.find(params[:id])
  end

  def destroy
  end

  def create

  end
end
