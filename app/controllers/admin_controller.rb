class AdminController < ApplicationController
  before_action :check_user

  def bestiary
  end

  def user
  end

  def herbarium
  end

  def index
  end

  private 

  def check_user
    if current_user.rank != "A.dmin0018"
      redirect_to "/check"
    end
  end

end
