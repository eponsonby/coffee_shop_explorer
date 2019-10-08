class Shop < ActiveRecord::Base
    has_many :items
    has_many :reviews, through: :users
end
