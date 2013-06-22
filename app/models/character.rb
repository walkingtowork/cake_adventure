class Character < ActiveRecord::Base
  has_and_belongs_to_many :scenes
  belongs_to :game
  has_one :inventory
  has_and_belongs_to_many :conversations
  has_many :dialogues


  attr_accessible :img_url, :name, :x_pos, :y_pos, :game_id
end
