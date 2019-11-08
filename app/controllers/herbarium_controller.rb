class HerbariumController < ApplicationController
  before_action :authenticate_user, only: [:new]

    def index
      puts "index"
    end
  
    def create
      puts "create"
  
      @herbarium = Herbarium.new(name: params["h_name"],
                      season_id: params["h_season"],
                      location: params["h_location"],
                      height: params["h_height"],
                      description: params["h_description"],
                      image: params["h_image"],
                      user_id: current_user.id,
                      habitat_herbarium_id: params["h_habitat"],
                      category_id: params["h_category"],
                      rarity_herbarium_id: params["h_rarity"],)
  
        if @herbarium.save 
          puts "------------- créature ajoutée"
          redirect_to "/herbarium"
        else
          puts "------------- créature refusée"
          render "/herbarium/new"
        end
  
    end
  
    def show
      puts "show"
    end
  
    def edit
      puts "edit"
    end
  
    def update
      puts "update"
    end
  
    def new
      puts "new"
    end
  
    def destroy
      puts "destroy"
    end
  

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end


  end