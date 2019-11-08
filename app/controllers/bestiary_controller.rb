class BestiaryController < ApplicationController

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
    end
  
    def new
      puts "new"
    end
  
    def destroy
      puts "destroy"
    end
  
  end