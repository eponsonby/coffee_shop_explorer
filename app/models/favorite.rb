class Favorite < ActiveRecord::Base
    belongs_to :favorite_shop, class_name: "Shop", foreign_key: "shop_id"
    # belongs_to :shop
    belongs_to :user

end
