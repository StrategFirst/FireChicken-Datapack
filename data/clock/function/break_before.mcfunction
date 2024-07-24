# Search for people trying to break clock and check if they can
#
# Input :
#
# Output :

tag @s add this

execute as @e[tag=beauty_clock, tag=interaction] on attacker if predicate clock:holding_pickaxe as @e[tag=this] run function clock:break

execute as @s run data remove entity @s attack
execute as @s run tag @s remove this