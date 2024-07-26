# Compute square root, with a maximum of two decimal places, using Héron's method
#
# Input :
#     fcpack:utils sqrt.input (storage) [double]
#
# Output :
#     fcpack:utils sqrt.output (storage) [double]
#
# Returns :
#     Integer part of the result
#
# Reserve :
#     utils.sqrt #X (scoreboard) [int] : input scale by 10_000
#     utils.sqrt #R (scoreboard) [int] : current iteration out

# Move input to register
execute store result score #X utils.sqrt run data get storage fcpack:utils sqrt.input 10000

# Initiate recursive value
execute store result score #R utils.sqrt run data get storage fcpack:utils sqrt.input 10000

# Run recurs
function utils:_sqrt

# Write output
execute store result storage fcpack:utils sqrt.output double 0.01 run scoreboard players get #R utils.sqrt
return run data get storage fcpack:utils sqrt.output