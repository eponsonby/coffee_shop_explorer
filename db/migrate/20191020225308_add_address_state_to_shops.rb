class AddAddressStateToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :address_state, :string
  end
end
