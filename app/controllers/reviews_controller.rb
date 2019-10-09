class ReviewsController < ApplicationController

    def index
        if params[:user_id]
            @reviews = User.find_by(id: params[:user_id]).reviews
        else
            @reviews = Review.all
        end
    end

    def show
        @review = Review.find(params[:id])
    end
    

end
