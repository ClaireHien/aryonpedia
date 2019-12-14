class SearchController < ApplicationController
  def show 


    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
    
  end
end
