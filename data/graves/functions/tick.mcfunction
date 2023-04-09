# Death handler
execute as @a if score @s graves.death matches 1.. at @s run function graves:die/death

# Tombstone interaction handler
execute as @e[type=minecraft:interaction,tag=graves.hitbox] if data entity @s interaction at @s run function graves:pickup/click