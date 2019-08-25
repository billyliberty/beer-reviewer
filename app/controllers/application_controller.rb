class ApplicationController < ActionController::Base

    helper_method :current_user, :require_login, :logged_in?

    def current_user
        if session[:user_id].present?
            user = User.find_by(:id => session[:user_id])
        end
    end

    def require_login
        unless current_user
            redirect_to root_path
        end
    end

    def logged_in?
        session[:user_id]
    end


end
