function icybolt:boss/summon/drake/render
function icybolt:boss/summon/drake/hitbox

summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:redstone_block"},Tags:['icybolt','drake','anchor'],transformation: {left_rotation: [0.0f,0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale :[0.1f,0.1f,0.1f]},brightness:{sky:15,block:15}}
execute as @e[tag=icybolt,tag=drake,tag=render] run ride @s mount @e[tag=drake,tag=anchor,tag=icybolt,limit=1,sort=nearest,distance=..1]

