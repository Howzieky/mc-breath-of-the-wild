

scoreboard players operation @s xVel = @s xPos
scoreboard players operation @s yVel = @s yPos
scoreboard players operation @s zVel = @s zPos
scoreboard players operation @s xVel -= @s xPosOld
scoreboard players operation @s yVel -= @s yPosOld
scoreboard players operation @s zVel -= @s zPosOld

scoreboard players operation @s xPosOld = @s xPos
scoreboard players operation @s yPosOld = @s yPos
scoreboard players operation @s zPosOld = @s zPos

data modify storage breath_of_the_wild tempEntity set from entity @s

execute store result score @s xPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[0] 1000
execute store result score @s yPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[1] 1000
execute store result score @s zPos run data get storage minecraft:breath_of_the_wild tempEntity.Pos[2] 1000
execute store result score @s xMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[0] 1000
execute store result score @s yMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[1] 1000
execute store result score @s zMotion run data get storage minecraft:breath_of_the_wild tempEntity.Motion[2] 1000
scoreboard players operation @s mx = @s xMotion
scoreboard players operation @s my = @s yMotion
scoreboard players operation @s mz = @s zMotion
execute store result score @s hRot run data get storage minecraft:breath_of_the_wild tempEntity.Rotation[0] 1000
execute store result score @s vRot run data get storage minecraft:breath_of_the_wild tempEntity.Rotation[1] 1000

#execute store result score @s xPos run data get entity @s Pos[0] 1000
#execute store result score @s yPos run data get entity @s Pos[1] 1000
#execute store result score @s zPos run data get entity @s Pos[2] 1000
#execute store result score @s xMotion run data get entity @s Motion[0] 1000
#execute store result score @s yMotion run data get entity @s Motion[1] 1000
#execute store result score @s zMotion run data get entity @s Motion[2] 1000
#execute store result score @s mx run data get entity @s Motion[0] 1000
#execute store result score @s my run data get entity @s Motion[1] 1000
#execute store result score @s mz run data get entity @s Motion[2] 1000
#execute store result score @s hRot run data get entity @s Rotation[0] 1000
#execute store result score @s vRot run data get entity @s Rotation[1] 1000
