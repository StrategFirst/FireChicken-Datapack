# Setup elements for graves handling, such has scoreboard and there constant
#
# Input :
#
# Output :

scoreboard objectives add graves.death deathCount
execute unless data storage fcpack:graves keepInventory store result storage fcpack:graves keepInventory short 1 run gamerule keepInventory
gamerule keepInventory true