class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :location, :address
  end
end
