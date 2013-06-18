class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.integer :game_id

      t.timestamps
    end
  end
end
