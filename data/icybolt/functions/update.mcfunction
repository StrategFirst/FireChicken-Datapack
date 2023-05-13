# Chasing
execute as @e[tag=render_0] at @s facing entity @e[type=minecraft:minecart,distance=..100] eyes run tp ^ ^ ^.4
# Body tracking
execute as @e[tag=render_1] at @s facing entity @e[tag=render_0] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_1] at @s if entity @e[tag=render_0,distance=..0.8] run tp ^ ^ ^-.65
# Body tracking
execute as @e[tag=render_2] at @s facing entity @e[tag=render_1] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_2] at @s if entity @e[tag=render_1,distance=..0.8] run tp ^ ^ ^-.65
# Body tracking
execute as @e[tag=render_3] at @s facing entity @e[tag=render_2] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_3] at @s if entity @e[tag=render_2,distance=..0.8] run tp ^ ^ ^-.65
# Body tracking
execute as @e[tag=render_4] at @s facing entity @e[tag=render_3] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_4] at @s if entity @e[tag=render_3,distance=..0.8] run tp ^ ^ ^-.65
# Body tracking
execute as @e[tag=render_5] at @s facing entity @e[tag=render_4] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_5] at @s if entity @e[tag=render_4,distance=..0.8] run tp ^ ^ ^-.65
# Body tracking
execute as @e[tag=render_6] at @s facing entity @e[tag=render_5] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_6] at @s if entity @e[tag=render_5,distance=..0.8] run tp ^ ^ ^-.65
# Body tracking
execute as @e[tag=render_7] at @s facing entity @e[tag=render_6] eyes run tp ^ ^ ^.4
# Body repulsing
execute as @e[tag=render_7] at @s if entity @e[tag=render_6,distance=..0.8] run tp ^ ^ ^-.65
# Wings following
execute as @e[tag=wings_right] at @e[tag=render_2] facing entity @e[tag=render_1,limit=1] eyes positioned ^1 ^ ^ run tp ^ ^ ^
execute as @e[tag=wings_left] at @e[tag=render_2] facing entity @e[tag=render_1,limit=1] eyes positioned ^-1 ^ ^ run tp ^ ^ ^
# Particle emeting
execute at @e[tag=render_1] run particle minecraft:dust 0.4 0.6 1 2 ~ ~ ~ .8 .8 .8 0 20 normal






