class FavoritesController < ApplicationController

    def index
        @shops = Shop.all
        @favorites = User.find_by(id: current_user.id).favorites
    end
    
    def show
        @favorite = Favorite.find(params[:id])
        @shop_name = @favorite.favorite_shop.name
    end

    def new
        @favorite = Favorite.new
        @shops = Shop.all
    end

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.valid?
            @favorite.save
            redirect_to user_favorites_path(@favorite)
        else
            render :new
        end
    end

    def edit
        @favorite = Favorite.find_by(id: params[:id])
        @shops = Shop.all
    end

    def update
        @favorite = Favorite.find_by(id: params[:id])
        @favorite.update(shop_id: params[:favorite][:shop_id], name: params[:favorite][:name])
        redirect_to user_favorites_path(@favorite)
    end

    def destroy
        @favorite = Favorite.find_by(id: params[:id])
        @favorite.destroy
        redirect_to user_favorites_path(@favorite)
    end

    private
    def favorite_params
        params.require(:favorite).permit(:shop_id, :name, :user_id)
    end


end
