# Sub routine for square root computation, using Héron's algorithm
#
# Input :
#     utils.sqrt #X (scoreboard) [int]
#     utils.sqrt #R (scoreboard) [int]
#
# Output :
#     utils.sqrt #R (scoreboard) [int]
#
# Reserve :
#     utils.sqrt #P (scoreboard) [int] : previous iteration out
#     utils.sqrt #Q (scoreboard) [int] : squared back iteration
#     utils.sqrt #E (scoreboard) [int] : squared back iteration
#
# Claim :
#     utils.sqrt #2 (scoreboard) [int] = 2

# Héron formula
scoreboard players operation #P utils.sqrt = #R utils.sqrt
scoreboard players operation #R utils.sqrt = #X utils.sqrt
scoreboard players operation #R utils.sqrt /= #P utils.sqrt
scoreboard players operation #R utils.sqrt += #P utils.sqrt
scoreboard players operation #R utils.sqrt /= #2 utils.sqrt

# Check back
scoreboard players operation #E utils.sqrt = #Q utils.sqrt
scoreboard players operation #Q utils.sqrt = #R utils.sqrt
scoreboard players operation #Q utils.sqrt *= #R utils.sqrt
scoreboard players operation #Q utils.sqrt -= #X utils.sqrt

# Recurse if required
execute unless score #Q utils.sqrt matches -1000..1000 unless score #E utils.sqrt = #Q utils.sqrt run function utils:_sqrt