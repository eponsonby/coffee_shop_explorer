class Shop < ActiveRecord::Base
    has_many :reviews
    has_many :favorites
    has_many :users, through: :reviews
    has_many :users, through: :favorites
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :website, presence: true
    validates :address_street, presence: true
    validates :address_city, presence: true
    validates :address_state, presence: true
    validates :address_zipcode, presence: true
end
