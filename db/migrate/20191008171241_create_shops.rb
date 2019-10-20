class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :neighborhood
      t.string :seating
      t.string :food
      t.boolean :wifi
      t.boolean :outlets
    end
  end
end
