data modify storage breath_of_the_wild tempEntity set from entity @s

execute store result score @s xPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[0] 1000
execute store result score @s yPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[1] 1000
execute store result score @s zPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[2] 1000
execute store result score @s xMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[0] 1000
execute store result score @s yMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[1] 1000
execute store result score @s zMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[2] 1000
execute store result score @s hRot run data get storage minecraft:breath_of_the_wild tempEntity.Rotation[0] 1000
execute store result score @s vRot run data get storage minecraft:breath_of_the_wild tempEntity.Rotation[1] 1000
