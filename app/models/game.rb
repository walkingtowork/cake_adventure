class Game < ActiveRecord::Base
  has_many :characters
  has_many :scenes
  has_many :inventories
  belongs_to :user

  attr_accessible :user_id
end
