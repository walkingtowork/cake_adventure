class Dialogue < ActiveRecord::Base
  belongs_to :character
  belongs_to :conversation

  attr_accessible :character_id, :conversation_id, :statement
end
