class FavoritesController < ApplicationController

    def index
        @shops = Shop.all
        @favorites = User.find_by(id: current_user.id).favorites
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
        @favorite = find_favorite
        @shops = Shop.all
    end

    def update
        @favorite = find_favorite
        @favorite.update(shop_id: params[:favorite][:shop_id], name: params[:favorite][:name])
        redirect_to user_favorites_path(@favorite)
    end

    def destroy
        @favorite = find_favorite
        @favorite.destroy
        redirect_to user_favorites_path(@favorite)
    end

    private
    def favorite_params
        params.require(:favorite).permit(:shop_id, :name, :user_id)
    end

    def find_favorite
        favorite = Favorite.find_by(id: params[:id])
        favorite
    end


end
