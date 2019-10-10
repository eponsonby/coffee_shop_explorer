class FavoritesController < ApplicationController

    def index
        if params[:user_id]
            @favorites = User.find_by(id: params[:user_id]).favorites
        else
            @favorites = Favorite.all
        end
    end
    
    def show
        @favorite = Favorite.find(params[:id])
        @shop_name = @favorite.shop.name
    end


end
