scoreboard objectives add graves.death deathCount
execute unless data storage graves keepInventory store result storage minecraft:graves keepInventory short 1 run gamerule keepInventory
gamerule keepInventory true