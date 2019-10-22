class ShopsController < ApplicationController

    def index
        @shops = Shop.all
    end

    def new
        @shop = Shop.new
    end

    def create
        @shop = Shop.new(shop_params)
        if @shop.valid?
            @shop.save
            redirect_to shop_path(@shop)
        else
            render :new
        end
    end

    def show
        @user = current_user
        @shop = Shop.find_by(id: params[:id])
    end

    def edit
        @shop = Shop.find_by(id: params[:id])
    end

    def update
        @shop = Shop.find_by(id: params[:id])
        @shop.update(shop_params)
        if @shop.valid?
            @shop.save
            redirect_to shop_path(@shop)
        else
            render :edit
        end
    end

    private
    def shop_params
        params.require(:shop).permit(
            :name, 
            :website, 
            :neighborhood, 
            :seating, 
            :food, 
            :wifi, 
            :outlets,
            :address_street,
            :address_city,
            :address_state,
            :address_zipcode
        )
    end


end
