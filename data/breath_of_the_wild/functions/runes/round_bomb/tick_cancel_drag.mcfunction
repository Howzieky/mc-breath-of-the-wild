data modify storage minecraft:breath_of_the_wild tempEntity set from entity @s
execute store result score @s xMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[0] 1000000
execute store result score @s zMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[2] 1000000
#scoreboard players operation @s xMotion += 10 constants
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[0] double .000001020408163 run scoreboard players get @s xMotion
execute store result storage minecraft:breath_of_the_wild tempEntity.Motion[2] double .000001020408163 run scoreboard players get @s zMotion

data modify entity @s Motion set from storage minecraft:breath_of_the_wild tempEntity.Motion
