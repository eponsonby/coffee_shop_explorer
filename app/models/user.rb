class User < ActiveRecord::Base
    has_secure_password
    validates :username, uniqueness: true
    has_many :reviews
    has_many :favorites
    has_many :shops, through: :reviews
    has_many :favorite_shops, class_name: "Shop", through: :favorites, foreign_key: "shop_id"

end