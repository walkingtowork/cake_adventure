class Item < ActiveRecord::Base
  has_and_belongs_to_many :backgrounds
  belongs_to :inventory
  belongs_to :scene

  attr_accessible :description, :img_url, :name, :x_pos, :y_pos, :inventory_id, :scene_id, :proto

end
