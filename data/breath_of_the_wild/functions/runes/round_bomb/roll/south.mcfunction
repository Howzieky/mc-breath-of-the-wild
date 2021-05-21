data modify storage minecraft:breath_of_the_wild tempEntity set from entity @s
execute store result score @s zMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[2] 1000
scoreboard players operation @s zMotion += 10 constants
execute store result entity @s Motion[2] double .001 run scoreboard players get @s zMotion
#say south
