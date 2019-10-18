class AddNeighborhoodToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :neighborhood, :string
  end
end
