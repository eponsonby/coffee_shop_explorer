class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :shop_id
      t.integer :user_id
    end
  end
end
