class FavoritesController < ApplicationController

    def index
        @shops = Shop.all
        @favorites = User.find_by(id: params[:user_id]).favorites
    end
    s
    def show
        @favorite = Favorite.find(params[:id])
        @shop_name = @favorite.favorite_shop.name
    end


end
