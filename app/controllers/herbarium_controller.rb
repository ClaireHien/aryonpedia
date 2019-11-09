class HerbariumController < ApplicationController
  before_action :authenticate_user, only: [:new]
  before_action :check_user, only: [:edit]

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

      @herbarium = Herbarium.find(params[:id])
      herbarium_params = params.require(:herbarium).permit(:name, :location, :habitat_herbarium_id, :rarity_herbarium_id, :season_id, :category_id, :description, :height, :image)

      puts herbarium_params 
      if @herbarium.update(herbarium_params)
        redirect_to '/herbarium'
      else
        render :edit
      end

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

  def check_user
    if current_user.rank != "A.dmin0018"
      redirect_to "/check"
    end
  end

  end