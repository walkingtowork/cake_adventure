class Conversation < ActiveRecord::Base
  belongs_to :background
  has_many :dialogues
  has_and_belongs_to_many :characters
  attr_accessible :name, :background_id
end
