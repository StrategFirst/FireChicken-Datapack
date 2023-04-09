execute store result score #x graves.death run data get entity @s Pos[0]
execute store result score #y graves.death run data get entity @s Pos[1]
execute store result score #z graves.death run data get entity @s Pos[2]
tellraw @s ["",{"text":"Your tombstone is located at : ","color":"#2A2A2A"},{"score":{"name":"#x","objective":"graves.death"},"color":"#6A0000"}," ",{"score":{"name":"#y","objective":"graves.death"},"color":"#006A03"}," ",{"score":{"name":"#z","objective":"graves.death"},"color":"#00006A"}]