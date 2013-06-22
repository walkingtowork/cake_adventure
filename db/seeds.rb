eggplant = Character.create(:name       => 'Eggplant',
                            :img_url    => '/images/character_eggplant.png',
                            :x_pos      => 0, #from the right
                            :y_pos      => 0, #from the bottom
                            :game_id    => 0
  )
tomato  = Character.create(:name        => 'Tomato',
                            :img_url    => '/images/character_tomato.png',
                            :x_pos      => 0,
                            :y_pos      => 0,
                            :game_id    => 0
  )
kitchen = Background.create(:name        => 'kitchen',
                            :description => 'This is where food is made!',
                            :img_url     => '/images/kitchen_background.png',
                            :scene_id    => 1,
                            :id          => 1
                            )
oven    = Item.create(:name          => 'oven',
                      :description   => 'It smells like delicious, delicious cake! Sadly, there is no cake to be found.',
                      :img_url       => '/images/kitchen_oven.png',
                      :x_pos         => 25,
                      :y_pos         => 0,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )
shelf   = Item.create(:name          => 'shelf',
                      :description   => "Beautiful, handmade wooden shelves. They are empty of cake, however.",
                      :img_url       => '/images/kitchen_shelf.png',
                      :x_pos         => 15,
                      :y_pos         => 354,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )
shelf   = Item.create(:name          => 'shelf',
                      :description   => "Beautiful, handmade wooden shelves. They are empty of cake, however.",
                      :img_url       => '/images/kitchen_shelf.png',
                      :x_pos         => 15,
                      :y_pos         => 440,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )
pot     = Item.create(:name          => 'pot',
                      :description   => "It's the same size as the cake! Maybe someone hid it in here as a joke! ...Nope.",
                      :img_url       => '/images/kitchen_pot.png',
                      :x_pos         => 90,
                      :y_pos         => 368,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )
table   = Item.create(:name          => 'table',
                      :description   => 'Covered in crumbs of delicious cake. It smells so tasty. You wonder if wood is edible...',
                      :img_url       => '/images/kitchen_table.png',
                      :x_pos         => 255,
                      :y_pos         => 0,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )
window  = Item.create(:name          => 'window',
                      :description   => "What a lovely day out! It would be a perfect birthday... if your cake hadn't been stolen.",
                      :img_url       => '/images/kitchen_window.png',
                      :x_pos         => 310,
                      :y_pos         => 356,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )
door    = Item.create(:name          => 'door',
                      :description   => "This door just leads out into the back yard...but wait! What's that on the handle? Frosting!",
                      :img_url       => '/images/kitchen_door.png',
                      :x_pos         => 555,
                      :y_pos         => 0,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1
                      )


# DIALOGUE
script = File.open("db/dialogue.txt")
script.each_line do |line|
  convo_name_words = line.split(':')

  convo = convo_name_words[0]
  conversation = Conversation.find_or_create_by_name(convo)

  name = convo_name_words[1]
  character = Character.find_by_name(name)

  words = convo_name_words[2]
  dialogue = Dialogue.create(:statement => words, :character_id => character.id, :conversation_id => conversation.id)
end











