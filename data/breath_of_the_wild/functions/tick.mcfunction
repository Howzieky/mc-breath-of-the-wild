#TODO:
###Change climbing. Shift to jump. Forward to climb up, backward to climb down. Turn around to detach, but if the player is shifting, wait until they unshift
###Allow the player to climb out of water. Doesn't work right now because the command looks for air beneath the feet. Needs to include water.
###Let the player cancel revali's gale by jumping
#Figure out how to manipulate hunger. If their stamina is too low, don't let them sprint.
###Fix the updraft so that if it disappears while the player is inside, the tag still gets removed from the player
#IMPOSSIBLE ###Freeze the entire game when the player opens their inventory
###Stop depending on 'noCollide' in player selectors
#Some timers count up. Some count down. Make it consistent
#IMPOSSIBLE ###Fix the bossbar so that it shows the correct bar to each player. Right now it directly references "Howzieky"

scoreboard players add 480thTick variables 1
scoreboard players operation 480thTick variables %= 480 constants
#scoreboard players operation 20thTick variables = 480thTick variables
#scoreboard players operation 20thTick variables %= 20 constants
#scoreboard players operation 16thTick variables = 480thTick variables
#scoreboard players operation 16thTick variables %= 16 constants
#scoreboard players operation 10thTick variables = 480thTick variables
#scoreboard players operation 10thTick variables %= 10 constants
#scoreboard players operation 8thTick variables = 480thTick variables
#scoreboard players operation 8thTick variables %= 8 constants
#scoreboard players operation 5thTick variables = 480thTick variables
#scoreboard players operation 5thTick variables %= 5 constants
#scoreboard players operation 4thTick variables = 480thTick variables
#scoreboard players operation 4thTick variables %= 4 constants
#scoreboard players operation 3rdTick variables = 480thTick variables
#scoreboard players operation 3rdTick variables %= 3 constants
#scoreboard players operation 2ndTick variables = 480thTick variables
#scoreboard players operation 2ndTick variables %= 2 constants

#say NEW TICK

execute as @e at @s run function breath_of_the_wild:tick/base