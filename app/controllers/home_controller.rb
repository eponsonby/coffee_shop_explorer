class HomeController < ApplicationController
  def index
    @wifi = params[:wifi]
    @outlets = params[:outlets]
        if @wifi == "1" && @outlets == "1"
            @shops = Shop.all.where(:wifi => 1, :outlets => 1)
        elsif @wifi == "1" && @outlets == nil
            @shops = Shop.all.where(wifi: 1)
        elsif @wifi == nil && @outlets == "1"
            @shops = Shop.all.where(outlets: 1)
        else
          @shops = Shop.all
        end
  end

end
