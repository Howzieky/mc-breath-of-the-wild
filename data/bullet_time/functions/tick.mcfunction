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

execute as @e[type=arrow] at @s run function bullet_time:tick_arrow

execute as @e[tag=daruk] at @s run function bullet_time:tick_daruk_animation
execute as @e[tag=mipha] at @s run function bullet_time:tick_mipha_animation
execute as @e[tag=urbosa] at @s run function bullet_time:tick_urbosa_animation

execute as @a[tag=link] at @s run function bullet_time:loop

execute unless entity @e[tag=updraftParticles] run tag @e remove inUpdraft
execute as @e[tag=updraftParticles] run function bullet_time:tick_updraft
