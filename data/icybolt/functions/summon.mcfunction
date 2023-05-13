summon minecraft:interaction ~ ~2 ~-1 {width:1,height:1,Tags:['icybolt_dragon','hitbox_0']}
summon minecraft:block_display ~ ~2 ~-1 {block_state:{Name:"minecraft:white_glazed_terracotta"},width:1,height:1,Tags:['icybolt_dragon','render_0']}
summon minecraft:interaction ~ ~2 ~0 {width:1,height:1,Tags:['icybolt_dragon','hitbox_1']}
summon minecraft:block_display ~ ~2 ~0 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_1']}
summon minecraft:interaction ~ ~2 ~1 {width:1,height:1,Tags:['icybolt_dragon','hitbox_2']}
summon minecraft:block_display ~ ~2 ~1 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_2']}
execute positioned ~1 ~2 ~1 summon minecraft:block_display run function icybolt:summon_wings_right
execute positioned ~1 ~2 ~-1 summon minecraft:block_display run function icybolt:summon_wings_left
summon minecraft:interaction ~ ~2 ~2 {width:1,height:1,Tags:['icybolt_dragon','hitbox_3']}
summon minecraft:block_display ~ ~2 ~2 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_3']}
summon minecraft:interaction ~ ~2 ~3 {width:1,height:1,Tags:['icybolt_dragon','hitbox_4']}
summon minecraft:block_display ~ ~2 ~3 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_4']}
summon minecraft:interaction ~ ~2 ~4 {width:1,height:1,Tags:['icybolt_dragon','hitbox_4']}
summon minecraft:block_display ~ ~2 ~4 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_4']}
summon minecraft:interaction ~ ~2 ~5 {width:1,height:1,Tags:['icybolt_dragon','hitbox_5']}
summon minecraft:block_display ~ ~2 ~5 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_5']}
summon minecraft:interaction ~ ~2 ~6 {width:1,height:1,Tags:['icybolt_dragon','hitbox_6']}
summon minecraft:block_display ~ ~2 ~6 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_6']}
summon minecraft:interaction ~ ~2 ~7 {width:1,height:1,Tags:['icybolt_dragon','hitbox_7']}
summon minecraft:block_display ~ ~2 ~7 {block_state:{Name:"minecraft:blue_ice"},width:1,height:1,Tags:['icybolt_dragon','render_7']}
ride @e[tag=hitbox_0,limit=1] mount @e[tag=render_0,limit=1]
ride @e[tag=hitbox_1,limit=1] mount @e[tag=render_1,limit=1]
ride @e[tag=hitbox_2,limit=1] mount @e[tag=render_2,limit=1]
ride @e[tag=hitbox_3,limit=1] mount @e[tag=render_3,limit=1]
ride @e[tag=hitbox_4,limit=1] mount @e[tag=render_4,limit=1]
ride @e[tag=hitbox_5,limit=1] mount @e[tag=render_5,limit=1]
ride @e[tag=hitbox_6,limit=1] mount @e[tag=render_6,limit=1]
ride @e[tag=hitbox_7,limit=1] mount @e[tag=render_7,limit=1]
#ride @e[tag=wings,limit=1] mount @e[tag=render_6,limit=1]