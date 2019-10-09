class Review < ActiveRecord::Base
    belongs_to :user
    belogns_to :shop

end