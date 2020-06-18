class BestiaryController < ApplicationController
  before_action :authenticate_user, only: [:new]
  before_action :check_user, only: [:edit, :update, :destroy]

    def index
      @all_bestiary = Bestiary.where(check: "validate")
      @all_level = Level.all
      @all_rarity = RarityBestiary.all
      @all_habitat = HabitatBestiary.all
      @all_pet = Pet.all
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
                      rarity_bestiary_id: params["b_rarity"],
                      check: "none",
                      pet_id: 1)
  
        if @bestiary.save 
          puts "------------- créature ajoutée"
          redirect_to :action => "show", :id => @bestiary.id
        else
          puts "------------- créature refusée"
          render "/bestiary/new"
        end
  
    end
  
    def show
      @all_bestiary = Bestiary.all
      @all_level = Level.all
      @all_rarity = RarityBestiary.all
      @all_habitat = HabitatBestiary.all
    end
  
    def edit
      @all_bestiary = Bestiary.all
      @all_level = Level.all
      @all_rarity = RarityBestiary.all
      @all_habitat = HabitatBestiary.all
      @all_pet = Pet.all
    end
  
    def update
      @bestiary = Bestiary.find(params[:id])
      bestiary_params = params.require(:bestiary).permit(:name, :location, :habitat_bestiary_id, :rarity_bestiary_id, :level_id, :description, :height, :image, :pet_id)

      puts bestiary_params 
      if @bestiary.update(bestiary_params)
        redirect_to :action => "show", :id => @bestiary.id
      else
        render :edit
      end
    end

    def validate
      @bestiary = Bestiary.find(params[:bestiary_id])
      @bestiary.check = "validate"

      if @bestiary.pet_id == nil
        @bestiary.pet_id = 1
      end

      if @bestiary.save
        redirect_to :action => "show", :id => @bestiary.id
      else
        redirect_to root_path
      end
    end
  
    def new
      @all_bestiary = Bestiary.all
      @all_level = Level.all
      @all_rarity = RarityBestiary.all
      @all_habitat = HabitatBestiary.all
    end
  
    def destroy
      @bestiary = Bestiary.find(params[:id])
      @bestiary.delete
      redirect_to "/bestiary"
    end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

  def check_user
    if current_user
      if current_user.rank != "Ar-admin2020"
        redirect_to "/check"
      end
    else 
      redirect_to "/check"
    end
  end

  
  end