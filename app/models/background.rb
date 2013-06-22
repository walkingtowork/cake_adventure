class Background < ActiveRecord::Base
  belongs_to :scene
  has_many :items
  has_many :conversations

  attr_accessible :description, :img_url, :name, :scene_id
end
