def make_backgrounds

  @kitchen = Background.create(:name        => 'kitchen',
                              :description => 'This is where food is made!',
                              :img_url     => '/images/kitchen_background.png',
                              :scene_id    => 1,
                              :proto       => true
                              )
  @backyard = Background.create(:name        => 'backyard',
                              :description => 'A peaceful yard with a nice shady tree. There must be someone around here who saw the cake-snatchers.',
                              :img_url     => '/images/backyard_bg.png',
                              :scene_id    => 1,
                              :proto       => true
                              )
  @left_yard_1 = Background.create(:name        => 'left_yard',
                              :description => 'This side of the house is pretty shady, and there\'s a something interesting right next to the house...',
                              :img_url     => '/images/left_yard_bg.png',
                              :scene_id    => 1,
                              :proto       => true
                              )
  @left_yard_2 = Background.create(:name        => 'left_yard',
                              :description => 'Not much has changed since you were last here, except that you feel that you\'re being watched.',
                              :img_url     => '/images/left_yard_bg.png',
                              :scene_id    => 2,
                              :proto       => true
                              )
  @right_yard_1 = Background.create(:name        => 'right_yard',
                              :description => 'This side of the house has lots of space for playing, and storing things.',
                              :img_url     => '/images/right_yard_bg.png',
                              :scene_id    => 1,
                              :proto       => true
                              )
  @right_yard_4 = Background.create(:name        => 'right_yard',
                              :description => 'This side of the house has lots of space for playing, and storing things.',
                              :img_url     => '/images/right_yard_bg.png',
                              :scene_id    => 4,
                              :proto       => true
                              )
  @front_yard_1 = Background.create(:name        => 'front_yard',
                              :description => 'Someone has taken great care in making sure that this yard looks great. ',
                              :img_url     => '/images/front_yard_bg.png',
                              :scene_id    => 1,
                              :proto       => true
                              )
  @front_yard_2 = Background.create(:name        => 'front_yard',
                              :description => 'Someone has taken great care in making sure that this yard looks great. ',
                              :img_url     => '/images/front_yard_bg.png',
                              :scene_id    => 2,
                              :proto       => true
                              )
  @basement_entry = Background.create(:name        => 'basement_entry',
                              :description => 'This is a dark, damp basement, with the unexpected sweet aroma of buttercream frosting.',
                              :img_url     => '/images/basement_entry_bg.png',
                              :scene_id    => 2,
                              :proto       => true
                              )
  @noss_lair = Background.create(:name        => 'boss_lair',
                              :description => 'As the darkness grows deeper, so does your determination to see justice done',
                              :img_url     => '/images/boss_lair_bg.png',
                              :scene_id    => 2,
                              :proto       => true
                              )
end

make_backgrounds

# CHARACTERS
eggplant = Character.create(:name       => 'Eggplant',
                            :img_url    => '/images/character_eggplant.png',
                            :x_pos      => 0, #from the right
                            :y_pos      => 0
  )
tomato  = Character.create(:name        => 'Tomato',
                            :img_url    => '/images/character_tomato.png',
                            :x_pos      => 0,
                            :y_pos      => 0
  )

oven    = Item.create(:name          => 'oven',
                      :description   => 'It smells like delicious, delicious cake! Sadly, there is no cake to be found.',
                      :img_url       => '/images/kitchen_oven.png',
                      :x_pos         => 25,
                      :y_pos         => 0,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
oven.background_ids = [@kitchen.id]

shelf   = Item.create(:name          => 'shelf',
                      :description   => "Beautiful, handmade wooden shelves. They are empty of cake, however.",
                      :img_url       => '/images/kitchen_shelf.png',
                      :x_pos         => 15,
                      :y_pos         => 354,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
shelf.background_ids = [@kitchen.id]

shelf_two   = Item.create(:name          => 'shelf',
                      :description   => "Beautiful, handmade wooden shelves. They are empty of cake, however.",
                      :img_url       => '/images/kitchen_shelf.png',
                      :x_pos         => 15,
                      :y_pos         => 440,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
shelf_two.background_ids = [@kitchen.id]
pot     = Item.create(:name          => 'pot',
                      :description   => "It's the same size as the cake! Maybe someone hid it in here as a joke! ...Nope.",
                      :img_url       => '/images/kitchen_pot.png',
                      :x_pos         => 90,
                      :y_pos         => 368,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
pot.background_ids = [@kitchen.id]
table   = Item.create(:name          => 'table',
                      :description   => 'Covered in crumbs of delicious cake. It smells so tasty. You wonder if wood is edible...',
                      :img_url       => '/images/kitchen_table.png',
                      :x_pos         => 255,
                      :y_pos         => 0,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
table.background_ids = [@kitchen.id]
window  = Item.create(:name          => 'window',
                      :description   => "What a lovely day out! It would be a perfect birthday... if your cake hadn't been stolen.",
                      :img_url       => '/images/kitchen_window.png',
                      :x_pos         => 310,
                      :y_pos         => 356,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
window.background_ids = [@kitchen.id]
door    = Item.create(:name          => 'door',
                      :description   => "This door just leads out into the back yard...but wait! What's that on the handle? Frosting!",
                      :img_url       => '/images/kitchen_door.png',
                      :x_pos         => 555,
                      :y_pos         => 0,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
door.background_ids = [@kitchen.id]

backyard_door    = Item.create(:name          => 'backyard_door',
                      :description   => "This door leads to the kitchen where your cake was pilfered. Le sigh.",
                      :img_url       => '/images/kitchen_door.png',
                      :x_pos         => 344,
                      :y_pos         => 205,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
backyard_nav_left    = Item.create(:name          => 'backyard_nav_left',
                      :description   => "This leads to the left side of the house",
                      :img_url       => '/images/blank_box_nav.png',
                      :x_pos         => 5,
                      :y_pos         => 205,
                      :scene_id      => 1,
                      :proto       => true
                      )
backyard_nav_right    = Item.create(:name          => 'backyard_nav_right',
                      :description   => "This leads to the right side of the house",
                      :img_url       => '/images/blank_box_nav.png',
                      :x_pos         => 696,
                      :y_pos         => 202,
                      :scene_id      => 1,
                      :proto       => true
                      )
sleeping_cat        = Item.create(:name          => 'sleeping_cat',
                      :description   => "This is one sleepy cat. He is determined to stay asleep no matter how much you inspecth him.",
                      :img_url       => '/images/ph.png',
                      :x_pos         => 122,
                      :y_pos         => 4,
                      :scene_id      => 1,
                      :proto       => true
                      )

# CONVERSATION
intro    = Conversation.create(:name          => 'intro',
                              :background_id  => '1',
                              :character_id   => '1',
                              :character_id   => '2'
                      )
backyard = Conversation.create(:name          => 'backyard',
                               :background_id => '2',
                               :character_id  => '1',
                               :character_id  => '2',
                               :character_id  => '3'
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