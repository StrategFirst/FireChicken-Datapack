tag @s add icybolt_runefind_step1
execute as @e[tag=icybolt_rune, distance=..12, tag=!icybolt_runefind_step1] at @s run function icybolt:runes/find_triangle/step2
tag @s remove icybolt_runefind_step1
