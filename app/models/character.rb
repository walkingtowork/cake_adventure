class Character < ActiveRecord::Base
  has_and_belongs_to_many :scenes
  has_one :inventory
  has_and_belongs_to_many :conversations
  has_many :dialogues
  belongs_to :background

  attr_accessible :img_url, :name, :x_pos, :y_pos, :background_id
end
