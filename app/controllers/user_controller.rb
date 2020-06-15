class UserController < ApplicationController
  before_action :check_user, only: [:edit, :update]

  def new
    puts "new user"
  end

  def show
    @all_bestiary = Bestiary.where(user_id: params[:id])
    @all_herbarium = Herbarium.where(user_id: params[:id])

  end

  def create
    puts "create user"

    @user = User.new(pseudo: params["u_pseudo"],
                    code: params["code_aryon"],
                    character: params["u_character"],
                    password: params["u_password"])

    puts @user.code
    
    if @user.code != "pediaryon20"
      puts "------------- pas le bon code :"
      render "/user/new"

    else

      if @user.save 
        puts "------------- compte crée"
        render "static/home"
      else
        puts "------------- inscription refusée :"
        render "/user/new"
      end
      
    end

  end
    
  def update
    @user = User.find(params[:id])
    user_params = params.require(:user).permit(:description, :rank, :password, :img_profile, :character)

    puts user_params 
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def check_user
    user = User.find(params[:id])
    if current_user.id != user.id
      redirect_to "/check"
    end
  end

end