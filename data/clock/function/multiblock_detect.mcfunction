# Try to detect if the multiblock corresponding to the clock exist arround an glowing item frame
#
# Input :
#
# Output :

execute as @e[type=minecraft:glow_item_frame, nbt={Item: {id: "minecraft:clock"}, Facing: 2b}] at @s align xyz positioned ~ ~ ~1 run execute if block ~ ~-2 ~ minecraft:white_stained_glass if block ~ ~-1 ~ minecraft:white_stained_glass if block ~ ~ ~ minecraft:white_concrete if block ~ ~1 ~ minecraft:light_weighted_pressure_plate run function clock:build
execute as @e[type=minecraft:glow_item_frame, nbt={Item: {id: "minecraft:clock"}, Facing: 3b}] at @s align xyz positioned ~ ~ ~-1 run execute if block ~ ~-2 ~ minecraft:white_stained_glass if block ~ ~-1 ~ minecraft:white_stained_glass if block ~ ~ ~ minecraft:white_concrete if block ~ ~1 ~ minecraft:light_weighted_pressure_plate run function clock:build 
execute as @e[type=minecraft:glow_item_frame, nbt={Item: {id: "minecraft:clock"}, Facing: 4b}] at @s align xyz positioned ~1 ~ ~ run execute if block ~ ~-2 ~ minecraft:white_stained_glass if block ~ ~-1 ~ minecraft:white_stained_glass if block ~ ~ ~ minecraft:white_concrete if block ~ ~1 ~ minecraft:light_weighted_pressure_plate run function clock:build 
execute as @e[type=minecraft:glow_item_frame, nbt={Item: {id: "minecraft:clock"}, Facing: 5b}] at @s align xyz positioned ~-1 ~ ~ run execute if block ~ ~-2 ~ minecraft:white_stained_glass if block ~ ~-1 ~ minecraft:white_stained_glass if block ~ ~ ~ minecraft:white_concrete if block ~ ~1 ~ minecraft:light_weighted_pressure_plate run function clock:build