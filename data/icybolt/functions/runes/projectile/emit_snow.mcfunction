summon armor_stand ~ ~ ~ {Invisible:1b,Tags:['this','icybolt','icybolt_snowlayer'],Invulnerable:1b,NoBasePlate:1b,NoGravity:0b,Small:1b,ArmorItems:[{},{},{},{id:"snow",Count:1b}],HandItems:[{},{}],DisabledSlots:4144959}

function random:get_11bit_signed
execute store result entity @e[tag=this,limit=1] Motion[0] double 0.001 run scoreboard players get #result random.random

data modify entity @e[tag=this,limit=1] Motion[1] set value 0.8d

function random:get_11bit_signed
execute store result entity @e[tag=this,limit=1] Motion[2] double 0.001 run scoreboard players get #result random.random

tag @e[tag=this,limit=1] remove this