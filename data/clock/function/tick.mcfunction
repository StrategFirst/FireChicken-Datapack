# Execute every tick periodic task, such has looking for clock breakers
#
# Input :
#
# Output :

execute as @e[tag=beauty_clock, tag=interaction] run function clock:break_before
