class SessionController < ApplicationController

  def new 
    puts "connexion"
  end

  def create

    user = User.find_by(pseudo: params["u_pseudo"])
    connexion = user.authenticate(params["u_password"])

    if connexion == false
      puts "------------- connexion refusée"
      render "/session/new"
    else
      puts "------------- connexion effectuée"
      session[:user_id] = user.id
      redirect_to "/"
    end
  
  end


  def destroy
    user_id = current_user.id
    session.destroy
    redirect_to "/"
  end


end