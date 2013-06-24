class AddIndexToBackgrounds < ActiveRecord::Migration
  def change
    add_index :backgrounds, :name
  end
end
