class Character < ActiveRecord::Base
  has_and_belongs_to_many :scenes
  has_one :inventory
  belongs_to :background

  attr_accessible :img_url, :name, :x_pos, :y_pos, :game_id, :background_id
end
