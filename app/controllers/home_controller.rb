class HomeController < ApplicationController
  skip_before_filter :authenticate_user!  #devise won't check public facing pages
  def index

  end

  def about
  end
end
