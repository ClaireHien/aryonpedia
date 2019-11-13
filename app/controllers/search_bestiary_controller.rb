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
end
