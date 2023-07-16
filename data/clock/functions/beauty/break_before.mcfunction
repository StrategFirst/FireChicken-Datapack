tag @s add this
tag @s add this

execute as @e[tag=beauty_clock,tag=interaction] on attacker if predicate clock:beauty/holding_pickaxe as @e[tag=this] run function clock:beauty/break

execute as @s run data remove entity @s attack
execute as @s run tag @s remove this