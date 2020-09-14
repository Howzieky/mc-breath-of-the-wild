scoreboard players operation @e[tag=bowDetector] xPos = @s xVel
scoreboard players operation @e[tag=bowDetector] yPos = @s yVel
scoreboard players operation @e[tag=bowDetector] zPos = @s zVel
scoreboard players operation @e[tag=bowDetector] xPos *= 3 constants
scoreboard players operation @e[tag=bowDetector] yPos *= 3 constants
scoreboard players operation @e[tag=bowDetector] zPos *= 3 constants
scoreboard players operation @e[tag=bowDetector] xPos += @s xPos
scoreboard players operation @e[tag=bowDetector] yPos += @s yPos
scoreboard players operation @e[tag=bowDetector] zPos += @s zPos
execute store result entity @e[tag=bowDetector,limit=1] Pos[0] double .001 run scoreboard players get @e[tag=bowDetector,limit=1] xPos
execute store result entity @e[tag=bowDetector,limit=1] Pos[1] double .001 run scoreboard players get @e[tag=bowDetector,limit=1] yPos
execute store result entity @e[tag=bowDetector,limit=1] Pos[2] double .001 run scoreboard players get @e[tag=bowDetector,limit=1] zPos
