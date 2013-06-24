class AddTableBackgroundsItems < ActiveRecord::Migration
  def change
    create_table :backgrounds_items, :id => false do |t|
      t.integer :background_id
      t.integer :item_id

      t.timestamps
    end

    remove_column :items, :background_id
  end
end
