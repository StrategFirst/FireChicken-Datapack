# Replace it correctly
data merge entity @s {transformation: {translation: [-0.35f, 0f, -0.35f]}, start_interpolation: 0, interpolation_duration: 0}
execute at @s run tp ~ ~15 ~

# Clean floor ice
execute at @s run kill @e[type=item, nbt={Item: {id: "minecraft:ice"}, OnGround: 1b}, distance=..120]

# Thunder in the corner
summon lightning_bolt ~40 ~ ~40
summon lightning_bolt ~40 ~ ~-40
summon lightning_bolt ~-40 ~ ~40
summon lightning_bolt ~-40 ~ ~-40

# Particles
execute at @s run particle minecraft:dust{color: [0.6, 0.6, 1.0], scale: 2} ~ ~ ~ 2 2 2 8 1250
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 2
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 1 5000

# The boss it self
execute at @s run function icybolt:boss/summon/drake/main