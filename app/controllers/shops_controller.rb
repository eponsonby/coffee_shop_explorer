class ShopsController < ApplicationController

    def index
        @shops = Shop.all
    end

    def new
        @shop = Shop.new
    end

    def create
        @shop = Shop.new(shop_params)
        if @shop.save
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
        @shop.update(
            name: params[:shop][:name], 
            website: params[:shop][:website],
            address_street: params[:shop][:address_street],
            address_city: params[:shop][:address_city],
            address_state: params[:shop][:address_state],
            address_zipcode: params[:shop][:address_zipcode],
            neighborhood: params[:shop][:neighborhood], 
            seating: params[:shop][:seating], 
            food: params[:shop][:food], 
            wifi: params[:shop][:wifi], 
            outlets: params[:shop][:outlets]
        )
        redirect_to shop_path(@shop)
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
