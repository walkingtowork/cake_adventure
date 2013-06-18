class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.integer :scene_id

      t.timestamps
    end
  end
end
