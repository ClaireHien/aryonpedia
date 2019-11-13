class SearchBestiaryController < ApplicationController
  def create
    name = params["b_name"]
    puts "-" * 20
    puts name
    b = Bestiary.find_by(name: name)

    if b != nil
      redirect_to "/bestiary/#{b.id}"
    end
  end
end
