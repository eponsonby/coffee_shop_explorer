class RenameItems < ActiveRecord::Migration[6.0]
  def change
    rename_table :items, :favorites
  end
end
