class UsersController < ApplicationController

    def index
    end

    def show
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else
            render :new
        end
    end

    def new
        @user = User.new
    end

end
