#TODO:
#Change climbing. Shift to jump. Forward to climb up, backward to climb down. Turn around to detach, but if the player is shifting, wait until they unshift
#Allow the player to climb out of water. Doesn't work right now because the command looks for air beneath the feet. Needs to include water.
###Let the player cancel revali's gale by jumping
#Figure out how to manipulate hunger. If their stamina is too low, don't let them sprint.
###Fix the updraft so that if it disappears while the player is inside, the tag still gets removed from the player
#Freeze the entire game when the player opens their inventory
#Stop depending on 'noCollide' in player selectors
#Some timers count up. Some count down. Make it consistent
#Fix the bossbar so that it shows the correct bar to each player. Right now it directly references "Howzieky"


execute as @e at @s run spawnpoint @s ~ ~ ~
execute as @a[tag=delayedDeath,scores={deaths=1..}] at @s run function bullet_time:handle_death
tag @a[scores={deaths=1..}] add delayedDeath
execute as @a[tag=!delayedDeath] run function bullet_time:update_scoreboards
tag @e remove notReallyOnGround
tag @e remove twoBlocksInAir
execute as @e at @s if block ~ ~-2 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add twoBlocksInAir
execute as @e[type=player,scores={traded=1..},nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}},tag=!busy,tag=twoBlocksInAir] run function bullet_time:start_bullet_time

team join noCollide @a[nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}}]
team leave @a[team=noCollide,nbt=!{OnGround:0b,SelectedItem:{id:"minecraft:bow"}}]

execute unless entity @e[team=noCollide,nbt={SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime] at Howzieky run tp @e[tag=bowDetector] ~ -4 ~
execute if entity @e[team=noCollide,nbt={SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime] as @e[tag=bowDetector] run function bullet_time:tp_to_predicted

execute as @e[tag=paragliding] run function bullet_time:tick_paraglider

execute as @e[type=arrow,tag=!old] at @s run function bullet_time:new_elemental_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:26b}]}] at @s run function bullet_time:tick_elemental_arrow
execute as @e[nbt={ActiveEffects:[{Id:26b}]}] at @s anchored eyes run function bullet_time:arrow_hit
execute as @e[type=arrow,tag=old,tag=!landed,nbt={inGround:1b}] at @s anchored eyes run function bullet_time:arrow_hit
execute as @e[tag=bulletTime] run function bullet_time:tick_bullet_time

execute as @e[scores={iceTimer=0..}] at @s run function bullet_time:tick_ice
execute as @e[tag=electrocuted] at @s run function bullet_time:tick_electrocute

execute as @e[scores={jump=1..},type=player,nbt={OnGround:0b},tag=galeReady,tag=!revaliDisabled] run function bullet_time:cancel_gale
execute as @e[scores={jump=1..},type=player,nbt={OnGround:1b}] run function bullet_time:jump_landed

scoreboard players operation sneakTimeOld sneakTime -= @e[type=player,limit=1] sneakTime
execute as @e[type=player,limit=1,tag=!crouching] if score sneakTimeOld sneakTime matches -1 run function bullet_time:start_crouch
execute as @e[type=player,limit=1,tag=crouching] if score sneakTimeOld sneakTime matches 0 run function bullet_time:release_crouch
execute store result score sneakTimeOld sneakTime run scoreboard players get @e[type=player,limit=1] sneakTime

execute unless score galeCounter timers matches 0..4 as @e[tag=crouching,tag=!climbing,tag=!paragliding,tag=!darukDisabled] at @s run function bullet_time:tick_prime_daruk
execute unless score galeCounter timers matches 0..4 as @e[tag=crouching,tag=!climbing,tag=!paragliding,tag=!urbosaDisabled] at @s if entity @s[scores={sneakTime=30..}] run function bullet_time:tick_prime_urbosa

execute as @a at @s[tag=!staminaExhausted] if block ~ ~-1 ~ air rotated ~ 0 positioned ^ ^ ^.35 unless block ~ ~ ~ air run function bullet_time:tick_climb
execute as @a at @s[tag=!staminaExhausted] if block ~ ~-1 ~ air rotated ~ 0 positioned ^ ^ ^.35 if block ~ ~ ~ air positioned ^ ^ ^.05 unless block ~ ~ ~ air run function bullet_time:tick_climb_stopped
execute as @a[tag=climbing] at @s rotated ~ 0 positioned ^ ^ ^.43 if block ~ ~ ~ air run function bullet_time:end_climb
execute as @a[tag=climbing,tag=staminaExhausted] run function bullet_time:end_climb


execute as @e[tag=daruk] at @s run function bullet_time:tick_daruk_animation
execute as @e[tag=mipha] at @s run function bullet_time:tick_mipha_animation
execute as @e[tag=urbosa] at @s run function bullet_time:tick_urbosa_animation

execute if entity @e[tag=galeCounting] run scoreboard players add galeCounter timers 1
execute if score galeCounter timers matches 5.. run tag @e[tag=galeCounting] remove galeCounting

execute if score galeCounter timers matches 0..4 as @e[tag=crouching,tag=!galeReady,nbt={OnGround:1b},tag=!revaliDisabled] run effect give @s slowness 1000000 30 true
execute if score galeCounter timers matches 0..4 as @e[scores={sneakTime=15..},tag=!galeReady,nbt={OnGround:1b},tag=!revaliDisabled] run function bullet_time:prime_gale
execute as @e[tag=galeFlying] at @s run function bullet_time:tick_gale

execute as @e[tag=galeReady] at @s run particle minecraft:instant_effect ^ ^ ^ 1 .1 1 0 5 force
execute as @e[tag=galeReady] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 1 .1 1 .01 2 force

execute as @e[tag=updraftParticles] run function bullet_time:tick_updraft
execute unless entity @e[tag=updraftParticles] run tag @e remove inUpdraft

execute as @e[type=player,scores={traded=1..}] run scoreboard players set @s traded 0

execute as @a if score @s stamina matches 0 run tag @s add staminaExhausted
execute if entity @a[tag=staminaExhausted] run bossbar set minecraft:stamina color red
execute as @a[tag=!climbing,tag=!bulletTime,tag=!paragliding,nbt={OnGround:1b}] if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
#execute as @a if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
execute as @a[tag=staminaExhausted] if score @s stamina = @s staminaMax run bossbar set minecraft:stamina color green
execute as @a[tag=staminaExhausted] if score @s stamina = @s staminaMax run tag @s remove staminaExhausted
execute store result bossbar minecraft:stamina value run scoreboard players get Howzieky stamina

tag @e[tag=!old] add old
