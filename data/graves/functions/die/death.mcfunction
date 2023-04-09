tag @s add graves.death_target
execute at @s summon minecraft:armor_stand run function graves:die/grave_spawn
tag @s remove graves.death_target
function graves:die/player_message
clear @s
scoreboard players reset @s graves.death