# Setup elements for utils funcitons, such has scoreboard and there constant
#
# Input :
#
# Output :
#
# Claim :
#     utils.str2int #swap (scoreboard) [int] = -1
#     utils.str2int #shift (scoreboard) [int] = 10

# str2int
scoreboard objectives add utils.str2int dummy
scoreboard players set #result utils.str2int 0
scoreboard players set #shift utils.str2int 10
scoreboard players set #swap utils.str2int -1
 