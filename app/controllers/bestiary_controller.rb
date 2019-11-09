class BestiaryController < ApplicationController
  before_action :authenticate_user, only: [:new]
  before_action :check_user, only: [:edit]

    def index
      puts "index"
    end
  
    def create
      puts "create"
  
      @bestiary = Bestiary.new(name: params["b_name"],
                      level_id: params["b_level"],
                      location: params["b_location"],
                      height: params["b_height"],
                      description: params["b_description"],
                      image: params["b_image"],
                      user_id: current_user.id,
                      habitat_bestiary_id: params["b_habitat"],
                      rarity_bestiary_id: params["b_rarity"],)
  
        if @bestiary.save 
          puts "------------- créature ajoutée"
          redirect_to "/bestiary"
        else
          puts "------------- créature refusée"
          render "/bestiary/new"
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

      @bestiary = Bestiary.find(params[:id])
      bestiary_params = params.require(:bestiary).permit(:name, :location, :habitat_bestiary_id, :rarity_bestiary_id, :level_id, :description, :height, :image)

      puts bestiary_params 
      if @bestiary.update(bestiary_params)
        redirect_to '/bestiary'
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