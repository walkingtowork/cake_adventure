class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :character_id
      t.integer :user_id

      t.timestamps
    end
  end
end
