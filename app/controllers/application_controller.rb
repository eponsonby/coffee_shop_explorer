class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    helper_method :logged_in?

    private

    def logged_in?
        !!current_user
    end
    
end
