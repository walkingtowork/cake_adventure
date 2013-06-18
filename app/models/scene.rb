class Scene < ActiveRecord::Base
  belongs_to :game
  has_many :items
  has_many :backgrounds
  has_and_belongs_to_many :characters

  attr_accessible :game_id, :name
end
