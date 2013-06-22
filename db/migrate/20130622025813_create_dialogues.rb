class CreateDialogues < ActiveRecord::Migration
  def change
    create_table :dialogues do |t|
      t.text :statement
      t.integer :character_id
      t.integer :conversation_id

      t.timestamps
    end
  end
end
