bossbar set minecraft:playercount players @a
execute store result score @a plaercount run execute if entity @a
execute store result bossbar minecraft:playercount value run execute if entity @a
execute store result bossbar minecraft:playercount max run execute if entity @a
bossbar set minecraft:playercount name ["線上玩家數：",{"score":{"name":"@a","objective":"plaercount"}}]


execute as @a at @s store result score @s x run data get entity @s Pos[0]
execute as @a at @s store result score @s y run data get entity @s Pos[1]
execute as @a at @s store result score @s z run data get entity @s Pos[2]

execute as @a at @s run title @a actionbar [{"text":"座標："},{"score":{"name":"@s","objective":"x"}},", ",{"score":{"name":"@s","objective":"y"}},", ",{"score":{"name":"@s","objective":"z"}}]