class AdminController < ApplicationController
  before_action :check_user

  def bestiary
    @all_bestiary = Bestiary.all
  end

  def user
    @all_user = User.all
  end

  def herbarium
    @all_herbarium = Herbarium.all
  end

  def index
    @all_herbarium = Herbarium.all
    @all_user = User.all
    @all_bestiary = Bestiary.all
  end

  private 

  def check_user
    if current_user.rank != "Ar-admin2020"
      redirect_to "/check"
    end
  end

end
