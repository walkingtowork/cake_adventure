class Background < ActiveRecord::Base
  belongs_to :scene
  has_and_belongs_to_many :items
  has_many :characters
  has_many :conversations

  attr_accessible :description, :img_url, :name, :scene_id, :proto
end
