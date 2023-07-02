summon block_display ~ ~ ~ {Tags:["icybolt","fossile","t1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:ice"}}
summon block_display ~ ~ ~ {Tags:["icybolt","fossile","arenacaster","t2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,.1f,-0.35f],scale:[.7f,.7f,.7f]},block_state:{Name:"minecraft:dragon_egg"},Glowing:1b,glow_color_override:5636095}
summon minecraft:interaction ~ ~ ~ {Tags:["icybolt","fossile","t3"]}

ride @e[tag=t1,limit=1,sort=nearest] mount @e[tag=t3,limit=1,sort=nearest]
ride @e[tag=t2,limit=1,sort=nearest] mount @e[tag=t3,limit=1,sort=nearest]

execute as @e[tag=t1] run tag @s remove t1
execute as @e[tag=t2] run tag @s remove t2
execute as @e[tag=t3] run tag @s remove t3
