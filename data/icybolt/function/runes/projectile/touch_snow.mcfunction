
execute if block ~ ~ ~ minecraft:snow[layers=8] run setblock ~ ~ ~ minecraft:powder_snow
execute if block ~ ~ ~ minecraft:snow[layers=7] run setblock ~ ~ ~ minecraft:powder_snow
execute if block ~ ~ ~ minecraft:snow[layers=6] run setblock ~ ~ ~ minecraft:powder_snow
execute if block ~ ~ ~ minecraft:snow[layers=5] run setblock ~ ~ ~ snow[layers=7]
execute if block ~ ~ ~ minecraft:snow[layers=4] run setblock ~ ~ ~ snow[layers=6]
execute if block ~ ~ ~ minecraft:snow[layers=3] run setblock ~ ~ ~ snow[layers=5]
execute if block ~ ~ ~ minecraft:snow[layers=2] run setblock ~ ~ ~ snow[layers=4]
execute if block ~ ~ ~ minecraft:snow[layers=1] run setblock ~ ~ ~ snow[layers=3]
execute if block ~ ~ ~ air run setblock ~ ~ ~ snow
execute if block ~ ~ ~ water run setblock ~ ~ ~ packed_ice
kill @s