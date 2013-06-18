class CreateCharactersScenesTables < ActiveRecord::Migration
  def change
    create_table :characters_scenes_tables, :id => false do |t|
      t.integer :character_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
