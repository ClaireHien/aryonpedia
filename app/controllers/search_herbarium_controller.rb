class SearchHerbariumController < ApplicationController
  def create
    name = params["b_name"]
    puts "-" * 20
    puts name
    b = Herbarium.find_by(name: name)

    if b != nil
      redirect_to "/herbarium/#{b.id}"
    end
  end
end
