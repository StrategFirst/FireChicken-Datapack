# Send the player a message to give them grave location information
#
# Input :
#
# Output :

execute store result score #x graves.death run data get entity @s Pos[0]
execute store result score #y graves.death run data get entity @s Pos[1]
execute store result score #z graves.death run data get entity @s Pos[2]

tellraw @s ""
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⠀⠀⠀⣠⣔⡿⠛⠒⠒⡕⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⠀⣀⣴⣳⠃⠀⠀⠀⠀⠀⠘⢎⡦⣄⠀⠀⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣜⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⣳⠀⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⡆⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣿⠀⢀⢴⠶⣤⢄⢲⣲⠦⣦⣤⡤⡀⡇⠇⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣿⠀⠀⣾⢀⣸⡸⠘⢸⠀⣿⠀⣸⡏⣧⠀⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣿⠀⠀⣿⠿⡯⡀⢀⣼⢀⣿⠛⠉⠀⢻⠀⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣿⠀⠐⠛⠂⠘⠛⠒⠛⠊⠛⠂⠀ ⢸⢸⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡼⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⢀⢾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡷⡀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⣠⠃⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠃⠐⡄⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⣯⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣹⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀ "}, {"color": "#666666", "score": {"name": "#x", "objective": "graves.death"}}, " ", {"score": {"name": "#y", "objective": "graves.death"}, "color": "#666666"}, " ", {"score": {"name": "#z", "objective": "graves.death"}, "color": "#666666"}, {"color": "#888888", "text": " ⠀"}]
tellraw @s [{"color": "#888888", "text": "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"}]
tellraw @s ""