summon armor_stand ^ ^ ^.5 {Fuse:60s,Tags:['icybolt_boltsphere','icybolt','this'],Small:1b,Invisible:1b}

# Get point A
execute store result score #ax icybolt.boltsphere.pos run data get entity @s Pos[0] 1000
execute store result score #ay icybolt.boltsphere.pos run data get entity @s Pos[1] 1000
execute store result score #az icybolt.boltsphere.pos run data get entity @s Pos[2] 1000

# Get point B
execute store result score #bx icybolt.boltsphere.pos run data get entity @e[tag=this,tag=icybolt_boltsphere,limit=1] Pos[0] 1000
execute store result score #by icybolt.boltsphere.pos run data get entity @e[tag=this,tag=icybolt_boltsphere,limit=1] Pos[1] 1000
execute store result score #bz icybolt.boltsphere.pos run data get entity @e[tag=this,tag=icybolt_boltsphere,limit=1] Pos[2] 1000

# Compute vector AB
scoreboard players operation #bx icybolt.boltsphere.pos -= #ax icybolt.boltsphere.pos
scoreboard players operation #by icybolt.boltsphere.pos -= #ay icybolt.boltsphere.pos
scoreboard players operation #bz icybolt.boltsphere.pos -= #az icybolt.boltsphere.pos

# Scale AB
scoreboard players operation #bx icybolt.boltsphere.pos *= #scale icybolt.boltsphere.pos
scoreboard players operation #by icybolt.boltsphere.pos *= #scale icybolt.boltsphere.pos
scoreboard players operation #bz icybolt.boltsphere.pos *= #scale icybolt.boltsphere.pos

# Inject vector AB as the motion
execute store result entity @e[tag=this,tag=icybolt_boltsphere,limit=1] Motion[0] double 0.001 run scoreboard players get #bx icybolt.boltsphere.pos
execute store result entity @e[tag=this,tag=icybolt_boltsphere,limit=1] Motion[1] double 0.001 run scoreboard players get #by icybolt.boltsphere.pos
execute store result entity @e[tag=this,tag=icybolt_boltsphere,limit=1] Motion[2] double 0.001 run scoreboard players get #bz icybolt.boltsphere.pos

tag @e[tag=this,tag=icybolt_boltsphere,limit=1] remove this

