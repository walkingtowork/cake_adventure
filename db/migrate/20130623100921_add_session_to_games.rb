class AddSessionToGames < ActiveRecord::Migration
  def change
    add_column :games, :current_session, :integer
    add_column :games, :current_bg, :integer
  end
end
