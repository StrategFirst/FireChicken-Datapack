tag @s add icybolt_runefind_step3
execute if entity @e[tag=icybolt_runefind_step1, distance=..12, tag=!icybolt_rune_triangle] run function icybolt:runes/find_triangle/found
tag @s remove icybolt_runefind_step3