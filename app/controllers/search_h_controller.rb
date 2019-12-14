class SearchHController < ApplicationController
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
