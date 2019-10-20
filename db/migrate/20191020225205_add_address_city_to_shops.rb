class AddAddressCityToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :address_city, :string
  end
end
