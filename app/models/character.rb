class Character < ActiveRecord::Base
  has_and_belongs_to_many :scenes
  belong_to :game
  has_one :inventory


  attr_accessible :img_url, :name, :x_pos, :y_pos, :game_id
end
