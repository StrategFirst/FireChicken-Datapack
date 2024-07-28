# Run periodicly every 2 seconds to animate clock and detect new ones
#
# Input :
#
# Output :

function clock:multiblock_detect

schedule function clock:tic 1t
schedule function clock:tac 1s

schedule function clock:2s 2s
