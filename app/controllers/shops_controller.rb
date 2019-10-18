class ShopsController < ApplicationController

    def index
        @shop = Shop.all

    end

    def show
        @shop = Shop.find_by(id: params[:id])
    end

    def edit
        @shop = Shop.find_by(id: params[:id])
    end

    def update
        @shop = Shop.find_by(id: params[:id])
        @shop.update(name: params[:shop][:name], neighborhood: params[:shop][:neighborhood], seating: params[:shop][:seating], food: params[:shop][:food], wifi: params[:shop][:wifi], outlets: params[:shop][:outlets])
        redirect_to shop_path(@shop)
    end

    private
    def shop_params
        params.require(:shop).permit(:name, :neighborhood, :seating, :food, :wifi, :outlets)
    end





end
