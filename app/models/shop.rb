class Shop < ActiveRecord::Base
    has_many :reviews
    has_many :favorites
    has_many :users, through: :reviews
    has_many :users, through: :favorites
    serialize :address, Hash
end
