# Drop item from the current grave which must be the context of this function
#
# Input :
#
# Output :
#
# Reserve :
#     graves.death #has_items (scoreboard) [int]

# Test if we do have some item to spawn
execute store success score #has_items graves.death run data get entity @s HandItems[1].components."minecraft:custom_data".grave_items[0]
# IF THERE IS ITEM TO REMOVE

# Spawn a blank item
execute if score #has_items graves.death matches 1.. run summon minecraft:item ~ ~0.4 ~ {Tags: ["graves.item"], Item: {id: "minecraft:structure_void", count: 1b}}
# Edit item to the current in the grave
execute if score #has_items graves.death matches 1.. run data modify entity @e[distance=..2, tag=graves.item, limit=1, sort=nearest] Item set from entity @s HandItems[1].components."minecraft:custom_data".grave_items[0]
# Do not edit the same item twice
execute if score #has_items graves.death matches 1.. run tag @e[distance=..2, tag=graves.item, limit=1, sort=nearest] remove graves.item
# Pop the first element of the list
execute if score #has_items graves.death matches 1.. run data remove entity @s HandItems[1].components."minecraft:custom_data".grave_items[0]
# Call again recursively
execute if score #has_items graves.death matches 1.. run function graves:pickup/drop_item

# ELSE

# Kill itself
execute if score #has_items graves.death matches ..0 run kill @s
# KIll display
execute if score #has_items graves.death matches ..0 at @s run kill @e[tag=graves.display, type=minecraft:text_display, distance=..2, sort=nearest, limit=1]
