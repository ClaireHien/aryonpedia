class SessionController < ApplicationController

  def new 
    puts "connexion"
  end

  def create

    @user = User.find_by(pseudo: params["u_pseudo"])
    puts "#"*50
    puts User.find_by(pseudo: params["u_pseudo"])
    puts "#"*50
    connexion = @user.authenticate(params["u_password"])
    puts  @user.authenticate(params["u_password"])
    puts "#"*50

    if connexion == false
      puts "------------- connexion refusée"
      render "/session/new"
    else
      puts "------------- connexion effectuée"
      session[:user_id] = @user.id
      redirect_to "/"
    end
  
  end

  def destroy
    puts "hello!"
    user_id = current_user.id
    session.delete(user_id)
    redirect_to "/"
  end


end