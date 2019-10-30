class ReviewsController < ApplicationController

    def index
        @reviews = User.find_by(id: current_user.id).reviews
    end

    def new
        @review = Review.new
        @shop = Shop.find_by(id: params[:shop_id])
    end

    def create
        @review = Review.new(review_params)
        @shop = Shop.find_by(id: params[:shop_id])
        if @review.save
            redirect_to shop_path(@shop)
        else
            render :new
        end
    end

    def edit
        @review = find_review
    end

    def update
        @review = find_review
        @review.update(title: params[:review][:title], content: params[:review][:content])
        redirect_to user_reviews_path(current_user.id)
    end

    def destroy
        @review = find_review
        @review.destroy
        redirect_to user_reviews_path(current_user.id)
    end


    private
    def review_params
        params.require(:review).permit(:title, :content, :shop_id, :user_id)
    end
    
    def find_review
        review = Review.find_by(id: params[:id])
        review
    end


end
