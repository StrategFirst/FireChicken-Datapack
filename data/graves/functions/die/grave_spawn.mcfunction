# Avoid tombstone falling
data modify entity @s NoGravity set value 1b

# Avoid tombstone getting destroyed and visual issues
data modify entity @s Invisible set value 1b

# Make the tombstone prettier
data modify entity @s Small set value 1b
data modify entity @s ArmorItems[3] set value {id:"minecraft:polished_blackstone_brick_wall", Count: 1b}
data modify entity @s HandItems[0] set value {id:"minecraft:poppy",Count:1b}
data modify entity @s HandItems[1] set value {id:"minecraft:stone_button",Count:1b,tag:{gravesData:{items:[]}}}
data modify entity @s Pose set value {RightArm:[270f,270f,0f]}
data modify entity @s ShowArms set value 1b

# Make sure the player can't extract element of the tombstone
data modify entity @s DisabledSlots set value 4144959

# Make sure the tombstone isn't flying
execute if block ~ ~-1 ~ air run setblock ~ ~-1 ~ minecraft:podzol

# Reposition entity
execute align xyz run tp @s ~.5 ~-.7 ~.5

# Identity this entity as a grave entity for later use and remove
tag @s add graves.grave

# Give an hitbox to our grave
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:0.5,height:0.4,Tags:['graves.hitbox']}

# Store player inventory 
data modify entity @s HandItems[1].tag.gravesData.items set from entity @p[tag=graves.death_target] Inventory

# Remove curse of vanishing equipped stuff
data remove entity @s HandItems[1].tag.gravesData.items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]

# Display text info using player's name and current time
execute align xyz run summon minecraft:text_display ~1.0 ~.1 ~.5 {text:'[{"text":"RIP :\\n"},{"selector":"@a[tag=graves.death_target]"},{"text":"\\n"},{"nbt":"time","storage":"clock"}]',Tags:['this','graves.display']}
execute as @e[type=minecraft:text_display,tag=this] at @s run tp @s ~ ~ ~ facing ~.1 ~1 ~
execute as @e[type=minecraft:text_display,tag=this] run data modify entity @s transformation.scale set value [.3f,.3f,.3f]
tag @e[type=minecraft:text_display,tag=this] remove this

