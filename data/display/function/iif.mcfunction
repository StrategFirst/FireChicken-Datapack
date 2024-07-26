# If a player rename (glow) item frame "invis" it will become an invisible item frame
#
# Input :
#
# Output :

execute as @a if entity @s[nbt={Inventory: [{id: "minecraft:item_frame", components: {"minecraft:custom_name": '"invis"'}}]}] run give @s minecraft:item_frame[minecraft:entity_data={id: "minecraft:item_frame", Invisible: 1b}, minecraft:custom_name='[{"text": "Invisible Item Frame", "italic": False, "color": "aqua"}]', minecraft:enchantments={"display:iif":1}]
execute as @a if entity @s[nbt={Inventory: [{id: "minecraft:item_frame", components: {"minecraft:custom_name": '"invis"'}}]}] run clear @s minecraft:item_frame[minecraft:custom_name='"invis"'] 1
execute as @a if entity @s[nbt={Inventory: [{id: "minecraft:glow_item_frame", components: {"minecraft:custom_name": '"invis"'}}]}] run give @s minecraft:glow_item_frame[minecraft:entity_data={id: "minecraft:glow_item_frame", Invisible: 1b}, minecraft:custom_name='[{"text": "Invisible Glow Item Frame", "italic": False, "color": "aqua"}]', minecraft:enchantments={"display:iif":1}]
execute as @a if entity @s[nbt={Inventory: [{id: "minecraft:glow_item_frame", components: {"minecraft:custom_name": '"invis"'}}]}] run clear @s minecraft:glow_item_frame[minecraft:custom_name='"invis"'] 1
