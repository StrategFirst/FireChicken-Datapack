# Setup elements for real time extraction, such has scoreboard and chunck load
#
# Input :
#
# Output :

forceload add 0 0
execute in minecraft:overworld run setblock 0 -64 0 minecraft:repeating_command_block{auto: 1b, Command: "tell @s a", TrackOutput: 1b}