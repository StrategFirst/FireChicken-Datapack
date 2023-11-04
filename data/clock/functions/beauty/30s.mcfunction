# Update needle clock : hour 
data modify storage utils.str2int input set from storage clock hours_s
function utils:str2int
execute as @e[tag=hour_needle] run execute store result entity @s Rotation[1] float 30 run data get storage utils.str2int output

# Update needle clock : minute 
data modify storage utils.str2int input set from storage clock minutes_s
function utils:str2int
execute as @e[tag=minute_needle] run execute store result entity @s Rotation[1] float 6 run data get storage utils.str2int output

# Loop :
schedule function clock:beauty/30s 30s