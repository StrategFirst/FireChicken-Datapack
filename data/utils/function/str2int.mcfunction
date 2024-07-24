# Convert a number from string representation (base10) to integer, from -999'999'999 to 9'999'999'999
#
# Input :
#     fcpack:utils str2int.input (storage) [string]
#
# Output :
#     utils.str2int #result (scoreboard) [int]
#
# Returns :
#     result
#
# Reserve :
#     fcpack:utils str2int.c0 (storage) [string]
#     fcpack:utils str2int.c1 (storage) [string]
#     fcpack:utils str2int.c2 (storage) [string]
#     fcpack:utils str2int.c3 (storage) [string]
#     fcpack:utils str2int.c4 (storage) [string]
#     fcpack:utils str2int.c5 (storage) [string]
#     fcpack:utils str2int.c6 (storage) [string]
#     fcpack:utils str2int.c7 (storage) [string]
#     fcpack:utils str2int.c8 (storage) [string]
#     fcpack:utils str2int.c9 (storage) [string]
#
# Claim :
#     utils.str2int #swap [int] = -1
#     utils.str2int #shift [int] = 10

# Reset state
data modify storage fcpack:utils str2int.c0 set value ""
data modify storage fcpack:utils str2int.c1 set value ""
data modify storage fcpack:utils str2int.c2 set value ""
data modify storage fcpack:utils str2int.c3 set value ""
data modify storage fcpack:utils str2int.c4 set value ""
data modify storage fcpack:utils str2int.c5 set value ""
data modify storage fcpack:utils str2int.c6 set value ""
data modify storage fcpack:utils str2int.c7 set value ""
data modify storage fcpack:utils str2int.c8 set value ""
data modify storage fcpack:utils str2int.c9 set value ""
scoreboard players set #result utils.str2int 0

# Read from input
data modify storage fcpack:utils str2int.c0 set string storage fcpack:utils str2int.input 0 1
data modify storage fcpack:utils str2int.c1 set string storage fcpack:utils str2int.input 1 2
data modify storage fcpack:utils str2int.c2 set string storage fcpack:utils str2int.input 2 3
data modify storage fcpack:utils str2int.c3 set string storage fcpack:utils str2int.input 3 4
data modify storage fcpack:utils str2int.c4 set string storage fcpack:utils str2int.input 4 5
data modify storage fcpack:utils str2int.c5 set string storage fcpack:utils str2int.input 5 6
data modify storage fcpack:utils str2int.c6 set string storage fcpack:utils str2int.input 6 7
data modify storage fcpack:utils str2int.c7 set string storage fcpack:utils str2int.input 7 8
data modify storage fcpack:utils str2int.c8 set string storage fcpack:utils str2int.input 8 9
data modify storage fcpack:utils str2int.c9 set string storage fcpack:utils str2int.input 9 10

# Compute conversion
execute if data storage fcpack:utils {"str2int":{"c0":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c0":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c0":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c0":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c0":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c0":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c0":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c0":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c0":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c0":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c1":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c1":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c1":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c1":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c1":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c1":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c1":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c1":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c1":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c1":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c1":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c2":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c2":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c2":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c2":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c2":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c2":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c2":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c2":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c2":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c2":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c2":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c3":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c3":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c3":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c3":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c3":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c3":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c3":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c3":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c3":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c3":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c3":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c4":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c4":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c4":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c4":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c4":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c4":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c4":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c4":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c4":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c4":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c4":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c5":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c5":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c5":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c5":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c5":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c5":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c5":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c5":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c5":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c5":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c5":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c6":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c6":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c6":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c6":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c6":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c6":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c6":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c6":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c6":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c6":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c6":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c7":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c7":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c7":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c7":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c7":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c7":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c7":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c7":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c7":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c7":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c7":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c8":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c8":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c8":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c8":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c8":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c8":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c8":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c8":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c8":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c8":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c8":"9"}} run scoreboard players add #result utils.str2int 9
execute unless data storage fcpack:utils {"str2int":{"c9":""}} run scoreboard players operation #result utils.str2int *= #shift utils.str2int
execute if data storage fcpack:utils {"str2int":{"c9":"0"}} run scoreboard players add #result utils.str2int 0
execute if data storage fcpack:utils {"str2int":{"c9":"1"}} run scoreboard players add #result utils.str2int 1
execute if data storage fcpack:utils {"str2int":{"c9":"2"}} run scoreboard players add #result utils.str2int 2
execute if data storage fcpack:utils {"str2int":{"c9":"3"}} run scoreboard players add #result utils.str2int 3
execute if data storage fcpack:utils {"str2int":{"c9":"4"}} run scoreboard players add #result utils.str2int 4
execute if data storage fcpack:utils {"str2int":{"c9":"5"}} run scoreboard players add #result utils.str2int 5
execute if data storage fcpack:utils {"str2int":{"c9":"6"}} run scoreboard players add #result utils.str2int 6
execute if data storage fcpack:utils {"str2int":{"c9":"7"}} run scoreboard players add #result utils.str2int 7
execute if data storage fcpack:utils {"str2int":{"c9":"8"}} run scoreboard players add #result utils.str2int 8
execute if data storage fcpack:utils {"str2int":{"c9":"9"}} run scoreboard players add #result utils.str2int 9

# Handling negative number
execute if data storage fcpack:utils {"str2int":{"c0":"-"}} run scoreboard players operation #result utils.str2int *= #swap utils.str2int

# Write output
return run scoreboard players get #result utils.str2int