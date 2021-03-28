class SessionsController < ApplicationController
    def index
    end
    def new
       
    end
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         flash[:success] = "You're logged in"
         redirect_to root_path
       
        else
             flash.now[:alert] = "Email or password is invalid"
          render "new"
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_url, notice: "Logged out!"
      end
end
