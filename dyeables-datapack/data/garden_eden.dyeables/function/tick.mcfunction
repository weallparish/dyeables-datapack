# clear functionality from the entire inventory
execute as @a run function garden_eden.item_helper:modify_in/all_slots {item_tag: "#garden_eden.dyeables:can_transform", item_modifier: "garden_eden.dyeables:set_not_transformable", condition: 'garden_eden.dyeables:is_crafted_transform'}

# if an item on the ground has functionality, remove it
execute as @e[type=item] run function garden_eden.item_helper:modify_in/slot {item_slot: "contents", item_tag: "#garden_eden.dyeables:can_transform", item_modifier: "garden_eden.dyeables:set_not_transformable", condition: 'garden_eden.dyeables:is_crafted_transform'}

# if an item in the player's mainhand doesn't have functionality, add it
execute as @a run function garden_eden.item_helper:modify_in/slot {item_slot: "weapon.mainhand", item_tag: "#garden_eden.dyeables:can_transform", item_modifier: "garden_eden.dyeables:set_transformable", condition: 'garden_eden.dyeables:true'}