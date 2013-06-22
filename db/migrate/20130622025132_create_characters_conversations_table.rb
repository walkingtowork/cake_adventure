class CreateCharactersConversationsTable < ActiveRecord::Migration
  def change
    create_table :characters_conversations_tables, :id => false do |t|
      t.integer :character_id
      t.integer :conversation_id
    end
  end
end
