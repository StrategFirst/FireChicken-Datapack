execute in overworld run data modify storage clock time set string block 1600 -64 1600 LastOutput 10 18
data modify storage clock hours_s set string storage clock time 0 2
data modify storage clock minutes_s set string storage clock time 3 5
data modify storage clock seconds_s set string storage clock time 6 8
execute as @e[tag=beauty_clock,tag=interaction] run function clock:beauty/break_before
