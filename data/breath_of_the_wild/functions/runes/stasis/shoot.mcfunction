tag @p[tag=link] add stasisPath
tag @e[tag=stasisFrozen,limit=1] add recentStasis
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["stasisPathMarker"]}
schedule function breath_of_the_wild:runes/stasis/end_path 7s replace

execute as @s run function breath_of_the_wild:tools/nbt_to_temp_entity

#particle minecraft:end_rod ^ ^ ^1 .1 .1 .1 .01 100 force
summon marker ^ ^ ^1 {Tags:["stasisMathMarker"]}
execute as @e[tag=stasisMathMarker] run function breath_of_the_wild:tools/nbt_to_temp_entity
scoreboard players operation @s xPos -= @e[tag=stasisMathMarker] xPos
scoreboard players operation @s yPos -= @e[tag=stasisMathMarker] yPos
scoreboard players operation @s zPos -= @e[tag=stasisMathMarker] zPos

scoreboard players operation @s xPos *= @s stasisDamage
scoreboard players operation @s yPos *= @s stasisDamage
scoreboard players operation @s zPos *= @s stasisDamage

execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[0] double -.0002 run scoreboard players get @s xPos
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[1] double -.0002 run scoreboard players get @s yPos
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[2] double -.0002 run scoreboard players get @s zPos
data modify entity @e[tag=stasisFrozen,limit=1] Motion set from storage minecraft:breath_of_the_wild tempEntity.Motion
#tellraw Howzieky {"nbt":"Motion","entity":"@s"}
kill @e[tag=stasisMathMarker]
