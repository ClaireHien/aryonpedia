class StaticController < ApplicationController
  before_action :check_event, only: [:event]

  def home
  end

  def event
    @all_herbarium = Herbarium.where(check: "event")
    @all_bestiary = Bestiary.where(check: "event")
  end

  private 

  def check_event
    if current_user
      if current_user.rank == "Ar-admin2020" || current_user.pseudo == "Maître du jeu"
        puts "Accès aux créations de l'event"
      else
        redirect_to "/check"
      end
    else 
      redirect_to "/check"
    end
  end
  
end