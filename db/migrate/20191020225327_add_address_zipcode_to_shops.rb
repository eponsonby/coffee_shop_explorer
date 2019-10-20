class AddAddressZipcodeToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :address_zipcode, :string
  end
end
