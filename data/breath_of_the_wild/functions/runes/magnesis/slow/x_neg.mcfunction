#Math.round(Math.round(x*10/z)*10000)/10
scoreboard players operation @s yPos *= 100 constants
scoreboard players operation @s yPos /= @s xPos
scoreboard players operation @s yPos *= 20 constants
scoreboard players operation @s yPos *= -1 constants

scoreboard players operation @s zPos *= 100 constants
scoreboard players operation @s zPos /= @s xPos
scoreboard players operation @s zPos *= 20 constants
scoreboard players operation @s zPos *= -1 constants

scoreboard players set @s xPos -1999
