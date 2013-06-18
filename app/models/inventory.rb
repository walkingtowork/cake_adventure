class Inventory < ActiveRecord::Base
  has_many :items
  belongs_to :user
  belongs_to :character

  attr_accessible :character_id, :user_id
end
