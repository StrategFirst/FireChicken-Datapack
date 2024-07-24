# Read from a command block the server real day time, using a command block at 0/-64/0
#
# Input :
#
# Output :
#     fcpack:utils time.time (storage) [string]
#     fcpack:utils time.hours_s (storage) [string]
#     fcpack:utils time.minutes_s (storage) [string]
#     fcpack:utils time.seconds_s (storage) [string]

execute in overworld run data modify storage fcpack:utils time.time set string block 0 -64 0 LastOutput 10 18
data modify storage fcpack:utils time.hours_s set string storage fcpack:utils time.time 0 2
data modify storage fcpack:utils time.minutes_s set string storage fcpack:utils time.time 3 5
data modify storage fcpack:utils time.seconds_s set string storage fcpack:utils time.time 6 8