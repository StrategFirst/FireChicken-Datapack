# 1. Retirer l'item frame :
kill @s
# 2. Retirer les blocks
setblock ~ ~1 ~ air
fill ~ ~-2 ~ ~ ~ ~ air
# 3. Invoquer l'horloge custom au bon endroit
execute positioned ~.5 ~-2 ~.5 run function clock:beauty/summon
# 4. Animation
particle minecraft:scrape ~.5 ~-1 ~.5 0.3 1 0.3 0 150
playsound minecraft:block.anvil.place block @a[distance=..5] ~ ~ ~ 20 2