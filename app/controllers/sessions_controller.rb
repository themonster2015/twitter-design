class SessionsController < ApplicationController
    def new
    end
  
    def create
      user = User.find_by(username: params[:session][:username].downcase)
      if user
        session[:user_id] = user.id
        flash[:success] = "You have successfully logged in"
        redirect_to user_path(user)
      else
        flash.now[:danger] = "Your login information is not correct."
        render 'new' 
      end
    end
  
    def destroy
      session[:user_id] = nil
      flash[:success] = "You have logged out"
      redirect_to root_path
    end
end
