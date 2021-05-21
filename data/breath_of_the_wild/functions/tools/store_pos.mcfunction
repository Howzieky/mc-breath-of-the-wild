#execute store result score @s xPos run data get entity @s Pos[0] 1000
#execute store result score @s yPos run data get entity @s Pos[1] 1000
#execute store result score @s zPos run data get entity @s Pos[2] 1000

data modify storage breath_of_the_wild tempEntity set from entity @s

execute store result score @s xPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[0] 1000
execute store result score @s yPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[1] 1000
execute store result score @s zPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[2] 1000
