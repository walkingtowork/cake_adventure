def make_backgrounds

  @kitchen = Background.create(:name        => 'kitchen',
                              :description => 'This is where food is made!',
                              :img_url     => '/images/kitchen_background.png',
                              :scene_id    => 1,
                              :id          => 1,
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
oven    = Item.create(:name          => 'oven',
                      :description   => 'It smells like delicious, delicious cake! Sadly, there is no cake to be found.',
                      :img_url       => '/images/kitchen_oven.png',
                      :x_pos         => 25,
                      :y_pos         => 0,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
shelf   = Item.create(:name          => 'shelf',
                      :description   => "Beautiful, handmade wooden shelves. They are empty of cake, however.",
                      :img_url       => '/images/kitchen_shelf.png',
                      :x_pos         => 15,
                      :y_pos         => 354,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
shelf   = Item.create(:name          => 'shelf',
                      :description   => "Beautiful, handmade wooden shelves. They are empty of cake, however.",
                      :img_url       => '/images/kitchen_shelf.png',
                      :x_pos         => 15,
                      :y_pos         => 440,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
pot     = Item.create(:name          => 'pot',
                      :description   => "It's the same size as the cake! Maybe someone hid it in here as a joke! ...Nope.",
                      :img_url       => '/images/kitchen_pot.png',
                      :x_pos         => 90,
                      :y_pos         => 368,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
table   = Item.create(:name          => 'table',
                      :description   => 'Covered in crumbs of delicious cake. It smells so tasty. You wonder if wood is edible...',
                      :img_url       => '/images/kitchen_table.png',
                      :x_pos         => 255,
                      :y_pos         => 0,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
window  = Item.create(:name          => 'window',
                      :description   => "What a lovely day out! It would be a perfect birthday... if your cake hadn't been stolen.",
                      :img_url       => '/images/kitchen_window.png',
                      :x_pos         => 310,
                      :y_pos         => 356,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
door    = Item.create(:name          => 'door',
                      :description   => "This door just leads out into the back yard...but wait! What's that on the handle? Frosting!",
                      :img_url       => '/images/kitchen_door.png',
                      :x_pos         => 555,
                      :y_pos         => 0,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )

backyard_door    = Item.create(:name          => 'backyard_door',
                      :description   => "This door leads to the kitchen where your cake was pilfered. Le sigh.",
                      :img_url       => '/images/kitchen_door.png',
                      :x_pos         => 344,
                      :y_pos         => 205,
                      :background_id => kitchen.id,
                      :inventory_id  => 0,
                      :scene_id      => 1,
                      :proto       => true
                      )
backyard_nav_left    = Item.create(:name          => 'backyard_nav_left',
                      :description   => "This leads to the left side of the house",
                      :img_url       => '/images/blank_box_nav.png',
                      :x_pos         => 5,
                      :y_pos         => 205,
                      :background_id => kitchen.id,
                      :scene_id      => 1,
                      :proto       => true
                      )
backyard_nav_right    = Item.create(:name          => 'backyard_nav_right',
                      :description   => "This leads to the right side of the house",
                      :img_url       => '/images/blank_box_nav.png',
                      :x_pos         => 696,
                      :y_pos         => 202,
                      :background_id => kitchen.id,
                      :scene_id      => 1,
                      :proto       => true
                      )
