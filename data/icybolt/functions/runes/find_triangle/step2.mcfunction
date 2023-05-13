tag @s add icybolt_runefind_step2
execute as @e[tag=icybolt_rune,distance=..12,tag=!icybolt_runefind_step1,tag=!icybolt_runefind_step2] at @s run function icybolt:runes/find_triangle/step3
tag @s remove icybolt_runefind_step2