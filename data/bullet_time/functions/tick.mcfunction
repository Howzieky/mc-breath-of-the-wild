execute as @a run function bullet_time:update_scoreboards
tag @e remove notReallyOnGround
tag @e remove twoBlocksInAir
execute as @e at @s if block ~ ~-2 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add twoBlocksInAir
execute as @e[type=player,scores={traded=1..},nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}},tag=!busy,tag=twoBlocksInAir] run function bullet_time:start_bullet_time

team join noCollide @e[nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}}]
team leave @e[nbt=!{OnGround:0b,SelectedItem:{id:"minecraft:bow"}}]

execute unless entity @e[team=noCollide,nbt={SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime] at Howzieky run tp @e[tag=bowDetector] ~ -4 ~
execute if entity @e[team=noCollide,nbt={SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime] as @e[tag=bowDetector] run function bullet_time:tp_to_predicted

execute as @e[tag=paragliding] run function bullet_time:tick_paraglider

execute as @e[type=arrow,tag=!old] at @s run function bullet_time:new_elemental_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:26b}]}] at @s run function bullet_time:tick_elemental_arrow
execute as @e[nbt={ActiveEffects:[{Id:26b}]}] at @s anchored eyes run function bullet_time:arrow_hit
execute as @e[type=arrow,tag=old,tag=!landed,nbt={inGround:1b}] at @s anchored eyes run function bullet_time:arrow_hit
execute as @e[tag=bulletTime] run function bullet_time:tick_bullet_time

execute as @e[scores={iceTimer=0..}] at @s run function bullet_time:tick_ice

execute as @e[scores={jump=1..},type=player,nbt={OnGround:1b}] run function bullet_time:jump_landed

scoreboard players operation sneakTimeOld sneakTime -= @e[type=player,limit=1] sneakTime
execute as @e[type=player,limit=1,tag=!crouching] if score sneakTimeOld sneakTime matches -1 run function bullet_time:start_crouch
execute as @e[type=player,limit=1,tag=crouching] if score sneakTimeOld sneakTime matches 0 run function bullet_time:release_crouch
execute store result score sneakTimeOld sneakTime run scoreboard players get @e[type=player,limit=1] sneakTime

#execute as @e run attribute @s minecraft:generic.knockback_resistance base set 0
#execute unless score galeCounter timers matches 0..4 as @e[tag=crouching,nbt={OnGround:1b}] at @s run function bullet_time:tick_prime_daruk

#execute if entity @e[tag=galeCounting] run scoreboard players add galeCounter timers 1
#execute if score galeCounter timers matches 5.. run tag @e[tag=galeCounting] remove galeCounting

#execute if score galeCounter timers matches 0..4 as @e[tag=crouching,type=player,tag=!galeReady,nbt={OnGround:1b}] run effect give @s slowness 1000000 30 true
#execute if score galeCounter timers matches 0..4 as @e[scores={sneakTime=15..},type=player,tag=!galeReady,nbt={OnGround:1b}] run function bullet_time:prime_gale
execute as @e[tag=galeFlying] at @s run function bullet_time:tick_gale

execute as @e[tag=galeReady] at @s run particle minecraft:instant_effect ^ ^ ^ 1 .1 1 0 5 force
execute as @e[tag=galeReady] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 1 .1 1 .01 2 force

execute as @e[tag=updraftParticles] run function bullet_time:tick_updraft

execute as @e[type=player,scores={traded=1..}] run scoreboard players set @s traded 0

execute as @a if score @s stamina matches 0 run tag @s add staminaExhausted
execute if entity @a[tag=staminaExhausted] run bossbar set minecraft:stamina color red
execute as @a[tag=!bulletTime,tag=!paragliding,nbt={OnGround:1b}] if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
execute as @a if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
execute as @a[tag=staminaExhausted] if score @s stamina = @s staminaMax run bossbar set minecraft:stamina color green
execute as @a[tag=staminaExhausted] if score @s stamina = @s staminaMax run tag @s remove staminaExhausted
execute store result bossbar minecraft:stamina value run scoreboard players get Howzieky stamina

tag @e[tag=!old] add old
