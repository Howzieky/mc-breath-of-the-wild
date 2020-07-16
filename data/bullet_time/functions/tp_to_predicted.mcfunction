scoreboard players operation @s xPos = Howzieky xVel
scoreboard players operation @s yPos = Howzieky yVel
scoreboard players operation @s zPos = Howzieky zVel
scoreboard players operation @s xPos *= 3 constants
scoreboard players operation @s yPos *= 3 constants
scoreboard players operation @s zPos *= 3 constants
scoreboard players operation @s xPos += Howzieky xPos
scoreboard players operation @s yPos += Howzieky yPos
scoreboard players operation @s zPos += Howzieky zPos
execute store result entity @s Pos[0] double .001 run scoreboard players get @s xPos
execute store result entity @s Pos[1] double .001 run scoreboard players get @s yPos
execute store result entity @s Pos[2] double .001 run scoreboard players get @s zPos
