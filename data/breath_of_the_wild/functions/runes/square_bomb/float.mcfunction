data modify storage minecraft:breath_of_the_wild tempEntity set from entity @s
execute store result score @s yMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[1] 1000
scoreboard players operation @s yMotion += 10 constants
execute store result entity @s Motion[1] double .0008 run scoreboard players get @s yMotion
#say float
