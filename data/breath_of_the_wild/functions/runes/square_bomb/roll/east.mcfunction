data modify storage minecraft:breath_of_the_wild tempEntity set from entity @s
execute store result score @s xMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[0] 1000
scoreboard players operation @s xMotion += 5 constants
execute store result entity @s Motion[0] double .001 run scoreboard players get @s xMotion
#say east
