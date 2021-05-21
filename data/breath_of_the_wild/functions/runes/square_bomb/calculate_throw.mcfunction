execute as @s run function breath_of_the_wild:tools/nbt_to_temp_entity

execute rotated ~ -40 run summon marker ^ ^ ^10 {Tags:["bombMathMarker"]}
execute as @e[tag=bombMathMarker] run function breath_of_the_wild:tools/nbt_to_temp_entity
scoreboard players operation @s xPos -= @e[tag=bombMathMarker] xPos
scoreboard players operation @s yPos -= @e[tag=bombMathMarker] yPos
scoreboard players operation @s zPos -= @e[tag=bombMathMarker] zPos
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[0] double -.00007 run scoreboard players get @s xPos
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[1] double -.00007 run scoreboard players get @s yPos
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[2] double -.00007 run scoreboard players get @s zPos
data modify entity @s Motion set from storage minecraft:breath_of_the_wild tempEntity.Motion
kill @e[tag=bombMathMarker]
