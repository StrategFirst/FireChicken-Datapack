# Animate the clock's pendulum for 1s every odd second
#
# Input :
#
# Output :

execute as @e[tag=beauty_clock, tag=pendulum] run data merge entity @s {transformation:{left_rotation:[0.0f, 0.0f, -0.1f, 1f]}, interpolation_duration: 20, start_interpolation: -1}
execute as @e[tag=beauty_clock, tag=pendulum] at @s run playsound minecraft:ui.button.click block @a[distance=..5] ~ ~ ~ 10 2 0.1