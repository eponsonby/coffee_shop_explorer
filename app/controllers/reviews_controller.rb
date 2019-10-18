class ReviewsController < ApplicationController

    def index
        @reviews = User.find_by(id: params[:user_id]).reviews
    end

    def show
        @review = Review.find_by(id: params[:id])
    end

    def edit
        @review = Review.find_by(id: params[:id])
    end

    def update
        @review = Review.find_by(id: params[:id])
        @review.update(content: params[:review][:content])
        redirect_to review_path(@review)
    end

    private
    def review_params
        params.require(:review).permit(:content)
    end
    

end
