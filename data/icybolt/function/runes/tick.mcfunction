# Animation via particle
particle minecraft:falling_dust{block_state:{Name:ice}} ~ ~-1 ~ 0.2 0.1 0.2 0 1 normal

# Test if neighbours
function icybolt:runes/find_triangle/step1

# Kill projectile on floor
execute as @e[tag=icybolt_snowlayer] if entity @s[nbt={OnGround:1b}] at @s run function icybolt:runes/projectile/touch_snow
execute as @e[tag=icybolt_icespike] if entity @s[nbt={inGround:1b}] at @s run function icybolt:runes/projectile/touch_ice

# If trigger run activadd functions
execute as @s[tag=icybolt_rune_triangle] run function icybolt:runes/tick_activated

# No longer activated check neighbour next time
execute as @s[tag=icybolt_rune_triangle] run tag @s remove icybolt_rune_triangle

# Destruction mechanics
execute if entity @a[distance=..2] run scoreboard players add @s icybolt.runes.heat 1
execute if score @s icybolt.runes.heat matches 1.. unless entity @a[distance=..2] run scoreboard players remove @s icybolt.runes.heat 1
execute if score @s icybolt.runes.heat matches 1 run playsound minecraft:block.amethyst_block.hit master @a[distance=..2] ~ ~ ~
execute if score @s icybolt.runes.heat matches 20 run playsound minecraft:block.amethyst_block.hit master @a[distance=..2] ~ ~ ~
execute if score @s icybolt.runes.heat matches 40 run playsound minecraft:block.amethyst_block.hit master @a[distance=..2] ~ ~ ~
execute if score @s icybolt.runes.heat matches 60 run playsound minecraft:block.glass.break master @a[distance=..2] ~ ~ ~
execute if score @s icybolt.runes.heat matches 60 run function icybolt:runes/kill