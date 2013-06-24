class AddProtoToBackgrounds < ActiveRecord::Migration
  def change
    add_column :backgrounds, :proto, :boolean
  end
end
