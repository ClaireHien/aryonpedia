class SearchHController < ApplicationController

  ## RECHERCHE POUR L'HERBIER 

  def index

    @all_cat = Category.all 
    @all_season = Season.all
    @all_rarity = RarityHerbarium.all
    @all_habitat = HabitatHerbarium.all

    @all_herbarium = []

    n = 0

    2.times do 

      if n == 0
        @search = params[:search].downcase
        n = 1
      else
        @search = params[:search].capitalize
      end  

      h_description = Herbarium.where('description LIKE ?', "%#{@search}%")
      h_description.each do |h|
        if @all_herbarium.include?(h) == false
          @all_herbarium << h
        end
      end

      h_name = Herbarium.where('name LIKE ?', "%#{@search}%")
      h_name.each do |h|
        if @all_herbarium.include?(h) == false
          @all_herbarium << h
        end
      end

    end

  end

  def show

    all_season = Season.all
    all_season.each do |s|
      if params[:id] == s.name
        season = Season.find_by(name: s.name)
        @all_herbarium = Herbarium.where(season_id: season.id)
      end
    end

    all_category = Category.all
    all_category.each do |c|
      if params[:id] == c.name
        category = Category.find_by(name: c.name)
        @all_herbarium = Herbarium.where(category_id: category.id)
      end
    end

    all_rarity = RarityHerbarium.all
    all_rarity.each do |r|
      if params[:id] == r.name
        rarity = RarityHerbarium.find_by(name: r.name)
        @all_herbarium = Herbarium.where(rarity_herbarium_id: rarity.id)
      end
    end

    all_hab = HabitatHerbarium.all
    all_hab.each do |h|
      if params[:id] == h.name
        habitat = HabitatHerbarium.find_by(name: h.name)
        @all_herbarium = Herbarium.where(habitat_herbarium_id: habitat.id)
      end
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end

  end
end
