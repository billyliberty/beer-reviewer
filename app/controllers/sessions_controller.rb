class SessionsController < ApplicationController

    def create
        user = User.find_by(:email => params[:user][:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.user_id
            redirect_to user_path(user)
        else
            render :new
        end
    end

    def destroy
        if current_user
            session.delete = user.user_id
            redirect_to root_path
        end
    end
    
end
