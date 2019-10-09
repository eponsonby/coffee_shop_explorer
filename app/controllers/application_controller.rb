class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :logged_in?
    helper_method :current_user

    private

    def logged_in?
        !!current_user
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def authenticate
        redirect_to login_path if !logged_in?
    end
    
end
