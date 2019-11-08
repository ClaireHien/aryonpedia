class UserController < ApplicationController

    def new
      puts "new user"
    end
  
    def create
      puts "create user"
  
      @user = User.new(pseudo: params["u_pseudo"],
                      code: params["code_aryon"],
                      character: params["u_character"],
                      password: params["u_password"],
                      rank: "Membre")
  
      puts @user.code
      
      if @user.code != "48Aryon84"
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
    
  end