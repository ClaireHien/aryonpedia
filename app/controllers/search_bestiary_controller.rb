class SearchBestiaryController < ApplicationController
  def create
    name = params["b_name"]
    puts "-" * 20
    puts name
    b = Bestiary.find_by(name: name.capitalize)

    if b != nil
      redirect_to "/bestiary/#{b.id}"
    end
  end

  def index
    @search = params[:search].downcase
    @offers_all = Offer.all

    @offers = []

    o_description = Offer.where('description LIKE ?', "%#{@search}%")
    o_description.each do |o|
      @offers << o
    end

    o_title = Offer.where('title LIKE ?', "%#{@search}%")
    o_title.each do |o|
      if @offers.include?(o) == false
        @offers << o
      end
    end

    category = Category.where('name LIKE ?', "%#{@search}%")
    category.each do |c|
      all_join_category_offer = JoinCategoryOffer.where(category_id: c.id)
      offers = []
      all_join_category_offer.each do |join|
        offers << Offer.find(join.offer.id)
      end
      offers.each do |o|
        if @offers.include?(o) == false
          @offers << o
        end
      end
    end  

    @category = Category.all
  end
end
