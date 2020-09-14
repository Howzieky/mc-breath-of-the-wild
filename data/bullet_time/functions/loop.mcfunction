#summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10000s,Tags:["raytrace"]}
#execute as @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function bullet_time:start_raytrace
#execute at @e[tag=raytrace] run setblock ~ ~1.7 ~ blue_wool
#execute at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~-1 ~2.2 ~.5 0 0 .6 0 1
#execute at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~2 ~2.2 ~.5 0 0 .6 0 1
#execute at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~.5 ~2.2 ~2 .6 0 0 0 1
#execute at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~.5 ~2.2 ~-1 .6 0 0 0 1

#
#THIS LOOP IS BEING RUN AS AND AT THE PLAYER WHO WAS SET TO BE LINK
#

spawnpoint @s ~ ~ ~
execute if entity @s[tag=delayedDeath,scores={deaths=1..}] run function bullet_time:handle_death
tag @s[scores={deaths=1..}] add delayedDeath
execute as @s[tag=!delayedDeath] run function bullet_time:update_scoreboards

tag @s remove notReallyOnGround
tag @s remove twoBlocksInAir
tag @e remove newInUpdraft

execute if block ~ ~-2 ~ minecraft:air if block ~ ~-1 ~ minecraft:air run tag @s add twoBlocksInAir
execute if entity @s[tag=!staminaExhausted,tag=!bulletTime,scores={traded=1..},nbt={SelectedItem:{id:"minecraft:bow"}},tag=!busy,tag=!climbing] run function bullet_time:start_bullet_time
execute unless entity @s[nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime,tag=!climbing] run tp @e[tag=bowDetector] ~ -4 ~
execute if entity @s[nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime,tag=!climbing] run function bullet_time:tp_to_predicted

execute if entity @s[tag=paragliding] run function bullet_time:tick_paraglider
execute as @e[nbt={ActiveEffects:[{Id:26b}]}] at @s anchored eyes run function bullet_time:arrow_hit

execute if entity @s[tag=bulletTime] run function bullet_time:tick_bullet_time

execute as @e[scores={iceTimer=0..}] at @s run function bullet_time:tick_ice
execute as @e[tag=electrocuted] at @s run function bullet_time:tick_electrocute

execute if entity @s[scores={jump=1..},nbt={OnGround:0b},tag=galeReady,tag=!revaliDisabled] run function bullet_time:cancel_gale
execute if entity @s[scores={jump=1..},nbt={OnGround:1b}] run function bullet_time:jump_landed

scoreboard players operation sneakTimeOld sneakTime -= @s sneakTime
execute if entity @s[tag=!crouching] if score sneakTimeOld sneakTime matches -1 run function bullet_time:start_crouch
execute if entity @s[tag=crouching] if score sneakTimeOld sneakTime matches 0 run function bullet_time:release_crouch
execute store result score sneakTimeOld sneakTime run scoreboard players get @s sneakTime

tag @s remove tickingPrimeDaruk
tag @s remove tickingPrimeUrbosa
execute unless score galeCounter timers matches 0..4 if entity @s[tag=crouching,tag=!climbing,tag=!paragliding,tag=!darukDisabled] run tag @s add tickingPrimeDaruk
execute unless score galeCounter timers matches 0..4 if entity @s[tag=crouching,tag=!climbing,tag=!paragliding,tag=!urbosaDisabled,nbt={OnGround:1b}] if entity @s[scores={sneakTime=30..}] run tag @s add tickingPrimeUrbosa

execute if entity @s[tag=!paragliding,tag=!tickingPrimeDaruk] run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @s[tag=!tickingPrimeUrbosa] run tp @e[tag=urbosaStand] ~ 0 ~
execute if entity @s[tag=!tickingPrimeUrbosa] run kill @e[tag=urbosaStand]

execute if entity @s[tag=tickingPrimeDaruk] run function bullet_time:tick_prime_daruk
execute if entity @s[tag=tickingPrimeUrbosa] run function bullet_time:tick_prime_urbosa

execute if entity @s[tag=!staminaExhausted,tag=!climbJumping] if block ~ ~-1 ~ #bullet_time:intangible rotated ~ 0 positioned ^ ^ ^.35 unless block ~ ~ ~ #bullet_time:intangible run function bullet_time:tick_climb
execute if entity @s[tag=!staminaExhausted,tag=!climbJumping] if block ~ ~-1 ~ #bullet_time:intangible rotated ~ 0 positioned ^ ^ ^.35 if block ~ ~ ~ #bullet_time:intangible positioned ^ ^ ^.05 unless block ~ ~ ~ air run function bullet_time:tick_climb_stopped
execute if entity @s[tag=climbing] run function bullet_time:tick_climb_movement_check
execute if entity @s[tag=climbing,tag=!climbJumpEnabled] rotated ~ 0 positioned ^ ^ ^.43 if block ~ ~ ~ #bullet_time:intangible run function bullet_time:end_climb
execute if entity @s[tag=climbing,tag=staminaExhausted] run function bullet_time:end_climb
execute if entity @s[tag=climbing] unless entity @e[tag=climbJumpMovementCheck] run summon minecraft:armor_stand ~ ~ ~ {Tags:["climbJumpMovementCheck"],Marker:1b,Invisible:1b}
execute unless entity @s[tag=climbing] if entity @e[tag=climbJumpMovementCheck] run kill @e[tag=climbJumpMovementCheck]

execute if score galeCounter timers matches 0..4 run function bullet_time:count_gale

execute if entity @s[tag=galeFlying] run function bullet_time:tick_gale

execute if entity @s[scores={traded=1..}] run scoreboard players set @s traded 0

execute if score @s stamina matches 0 run tag @s add staminaExhausted
execute if entity @s[tag=staminaExhausted] run bossbar set minecraft:stamina color red
execute if entity @s[tag=!climbing,tag=!bulletTime,tag=!paragliding,nbt={OnGround:1b}] if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
#execute as @a if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
execute if entity @s[tag=staminaExhausted] if score @s stamina = @s staminaMax run bossbar set minecraft:stamina color green
execute if entity @s[tag=staminaExhausted] if score @s stamina = @s staminaMax run tag @s remove staminaExhausted
execute store result bossbar minecraft:stamina value run scoreboard players get @s stamina

tag @e[tag=!old] add old
