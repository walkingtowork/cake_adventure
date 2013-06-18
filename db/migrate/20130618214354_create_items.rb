class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.integer :x_pos
      t.integer :y_pos
      t.integer :background_id
      t.integer :inventory_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
