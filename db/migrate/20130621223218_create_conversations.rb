class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :name
      t.integer :background_id
      t.integer :character_id

      t.timestamps
    end
  end
end
n
