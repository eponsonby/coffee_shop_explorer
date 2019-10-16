class AddLocationToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :location, :text
  end
end
