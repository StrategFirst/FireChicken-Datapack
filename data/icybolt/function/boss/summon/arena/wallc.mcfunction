data modify storage icybolt wallbrick set value [0.0d, 0.7d, 2.0d]

execute store result storage icybolt wallbrick[0] double 0.0009765 run random value -1024..1024

summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:ice"},Time:1,Motion:[0.0d,0.7d,2.0d],Tags:['this']}

data modify entity @e[tag=this,limit=1] Motion set from storage icybolt wallbrick

tag @e[tag=this] remove this


