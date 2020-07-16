scoreboard players operation @s xVel = @s xPos
scoreboard players operation @s yVel = @s yPos
scoreboard players operation @s zVel = @s zPos
scoreboard players operation @s xVel -= @s xPosOld
scoreboard players operation @s yVel -= @s yPosOld
scoreboard players operation @s zVel -= @s zPosOld

scoreboard players operation @s xPosOld = @s xPos
scoreboard players operation @s yPosOld = @s yPos
scoreboard players operation @s zPosOld = @s zPos
execute store result score @s xPos run data get entity @s Pos[0] 1000
execute store result score @s yPos run data get entity @s Pos[1] 1000
execute store result score @s zPos run data get entity @s Pos[2] 1000
execute store result score @s xMotion run data get entity @s Motion[0] 1000
execute store result score @s yMotion run data get entity @s Motion[1] 1000
execute store result score @s zMotion run data get entity @s Motion[2] 1000
