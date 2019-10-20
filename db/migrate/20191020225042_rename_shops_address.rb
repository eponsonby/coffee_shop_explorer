class RenameShopsAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :address, :address_street
  end
end
