# Cursor
$function garden_eden.item_helper:modify_in/slot {item_slot: "player.cursor", item_tag: "$(item_tag)", item_modifier: "$(item_modifier)"}

# Hotbar (0–8)
$execute if items entity @s hotbar.* $(item_tag) run function garden_eden.item_helper:modify_in/hotbar {item_tag: "$(item_tag)", item_modifier: "$(item_modifier)"}

# Main inventory (0-26)
$execute if items entity @s inventory.* $(item_tag) run function garden_eden.item_helper:modify_in/inventory {item_tag: "$(item_tag)", item_modifier: "$(item_modifier)"}

# Container
$execute if items entity @s container.* $(item_tag) run function garden_eden.item_helper:modify_in/container {item_tag: "$(item_tag)", item_modifier: "$(item_modifier)"}

