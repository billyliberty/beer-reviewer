class SessionsController < ApplicationController

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          redirect_to '/login'
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
    
end
