# Break a clock
#
# Input :
#
# Output :

execute on passengers run kill @s
execute at @s positioned ~ ~2.5 ~ as @e[distance=...4, tag=hour_needle] run kill @s
execute at @s positioned ~ ~2.5 ~ as @e[distance=...4, tag=minute_needle] run kill @s
execute at @s run summon item ~ ~ ~ {Item: {id: "minecraft:white_concrete", count: 1b}}
execute at @s run summon item ~ ~ ~ {Item: {id: "minecraft:white_stained_glass", count: 2b}}
execute at @s run summon item ~ ~ ~ {Item: {id: "minecraft:light_weighted_pressure_plate", count: 1b}}
execute at @s run summon item ~ ~ ~ {Item: {id: "minecraft:glow_item_frame", count: 1b}}
execute at @s run summon item ~ ~ ~ {Item: {id: "minecraft:clock", count: 1b}}
kill @s