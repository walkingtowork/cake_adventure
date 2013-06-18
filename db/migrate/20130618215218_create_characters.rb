class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :img_url
      t.integer :x_pos
      t.integer :y_pos
      t.integer :game_id

      t.timestamps
    end
  end
end
