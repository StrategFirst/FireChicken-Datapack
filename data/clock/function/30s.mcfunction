# Run periodicly every 30 seconds to update clock needles
#
# Input :
#
# Output :

# Update needle clock : hour 
data modify storage fcpack:utils str2int.input set from storage fcpack:utils time.hours_s
execute as @e[tag=hour_needle] run execute store result entity @s Rotation[1] float 30 run function utils:str2int

# Update needle clock : minute 
data modify storage fcpack:utils str2int.input set from storage fcpack:utils time.minutes_s
execute as @e[tag=minute_needle] run execute store result entity @s Rotation[1] float 6 run function utils:str2int

# Loop :
schedule function clock:30s 30s