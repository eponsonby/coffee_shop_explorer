class ReviewsController < ApplicationController

    def index
        @reviews = User.find_by(id: params[:user_id]).reviews
    end

    def show
        @review = Review.find(params[:id])
    end
    

end
