summon armor_stand ~ ~ ~ {Invisible:1b,Tags:['this','icybolt','icybolt_snowlayer'],Invulnerable:1b,NoBasePlate:1b,NoGravity:0b,Small:1b,ArmorItems:[{},{},{},{id:"snow",Count:1b}],HandItems:[{},{}],DisabledSlots:4144959}

execute store result entity @e[tag=this,limit=1] Motion[0] double 0.001 run random value -1024..1024

data modify entity @e[tag=this,limit=1] Motion[1] set value 0.8d

execute store result entity @e[tag=this,limit=1] Motion[2] double 0.001 run random value -1024..1024

tag @e[tag=this,limit=1] remove this