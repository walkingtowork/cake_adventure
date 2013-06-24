class AddProtoToItems < ActiveRecord::Migration
  def change
    add_column :items, :proto, :boolean
  end
end
