class Background < ActiveRecord::Base
  belongs_to :scene
  has_many :items

  attr_accessible :description, :img_url, :name, :scene_id
end
