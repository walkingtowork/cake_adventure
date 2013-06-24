class CharactersBelongToBackgrounds < ActiveRecord::Migration
  def up
    drop_table :backgrounds_characters
    add_column :characters, :background_id, :integer
  end

  def down
  end
end
