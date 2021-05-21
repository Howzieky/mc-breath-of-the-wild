execute as @e[tag=magnesisTarget] run function breath_of_the_wild:tools/store_pos
execute as @s run function breath_of_the_wild:tools/store_pos

scoreboard players operation @s xPos -= @e[tag=magnesisTarget] xPos
scoreboard players operation @s yPos -= @e[tag=magnesisTarget] yPos
scoreboard players operation @s zPos -= @e[tag=magnesisTarget] zPos

execute at @e[tag=magnesisTarget] if entity @s[distance=2..] run function breath_of_the_wild:runes/magnesis/slow/base

execute as @s store result storage minecraft:breath_of_the_wild tempEntity.Motion[0] double -.001 run scoreboard players get @s xPos
execute as @s store result storage minecraft:breath_of_the_wild tempEntity.Motion[1] double -.001 run scoreboard players get @s yPos
execute as @s store result storage minecraft:breath_of_the_wild tempEntity.Motion[2] double -.001 run scoreboard players get @s zPos
data modify entity @s Motion set from storage minecraft:breath_of_the_wild tempEntity.Motion
