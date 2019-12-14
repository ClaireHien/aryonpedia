class SearchController < ApplicationController

  ## RECHERCHE POUR LE BESTIAIRE 

  def index
    @search = params[:search].downcase

    @all_level = Level.all
    @all_rarity = RarityBestiary.all
    @all_habitat = HabitatBestiary.all

    @all_bestiary = []

    b_description = Bestiary.where('description LIKE ?', "%#{@search}%")
    b_description.each do |b|
      @all_bestiary << b
    end

    b_name = Bestiary.where('name LIKE ?', "%#{@search}%")
    b_name.each do |b|
      if @all_bestiary.include?(b) == false
        @all_bestiary << b
      end
    end
  end

  def show 

    all_level = Level.all
    all_level.each do |lv|
      if params[:id] == lv.name
        level = Level.find_by(name: lv.name)
        @all_bestiary = Bestiary.where(level_id: level.id)
      end
    end

    all_rarity = RarityBestiary.all
    all_rarity.each do |r|
      if params[:id] == r.name
        rarity = RarityBestiary.find_by(name: r.name)
        @all_bestiary = Bestiary.where(rarity_bestiary_id: rarity.id)
      end
    end

    all_hab = HabitatBestiary.all
    all_hab.each do |h|
      if params[:id] == h.name
        habitat = HabitatBestiary.find_by(name: h.name)
        @all_bestiary = Bestiary.where(habitat_bestiary_id: habitat.id)
      end
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end

  end
end
