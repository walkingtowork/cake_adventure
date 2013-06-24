class ChangeCharactersScenesTable < ActiveRecord::Migration
  def change

    drop_table :characters_scenes_tables

    create_table :backgrounds_characters, :id => false do |t|
      t.integer :background_id
      t.integer :character_id
      t.timestamps
    end


  end
end
