execute unless entity @e[tag=cryonisBlockBeingLookedAt] at @p[tag=link] run tp @e[tag=bigCryonisCube] ~ ~-20 ~
execute as @e[tag=cryonisBlock] run data merge entity @s {Duration:10000s}



#
#THIS LOOP IS BEING RUN AS AND AT THE PLAYER WHO WAS SET TO BE LINK
#

spawnpoint @s ~ ~ ~
execute if entity @s[tag=delayedDeath,scores={deaths=1..}] run function breath_of_the_wild:event_handlers/handle_death
tag @s[scores={deaths=1..}] add delayedDeath
execute as @s[tag=!delayedDeath] run function breath_of_the_wild:tools/nbt_to_link_data

#execute if score @s useCS matches 1.. run say TEST BEFORE
execute if predicate breath_of_the_wild:holding_carrot_on_a_stick run function breath_of_the_wild:runes/tick_holding_cs
#execute if score @s useCS matches 1.. run say TEST AFTER
execute as @s[tag=holdingCS,predicate=!breath_of_the_wild:holding_carrot_on_a_stick] run function breath_of_the_wild:runes/end_holding_cs
execute as @s[scores={dropCS=1..}] run function breath_of_the_wild:runes/handle_drop_cs
execute if entity @s[tag=selectingRune] run function breath_of_the_wild:runes/tick_rune_select
execute as @s[scores={useCS=1..}] run function breath_of_the_wild:runes/handle_rc_cs
execute as @e[tag=runeSelector] at @s run particle cloud ^ ^.8 ^-4 .2 .2 .2 0 1

execute if entity @s[tag=liveSquareBomb] as @e[tag=square_bomb_back] at @s run function breath_of_the_wild:runes/square_bomb/tick_physics
execute if entity @s[tag=liveRoundBomb] as @e[tag=round_bomb_back] at @s run function breath_of_the_wild:runes/round_bomb/tick_physics
execute if entity @s[tag=liveStasis] run function breath_of_the_wild:runes/stasis/live

#execute positioned

tag @s remove notReallyOnGround
tag @s remove twoBlocksInAir
tag @e remove newInUpdraft

execute if block ~ ~-2 ~ minecraft:air if block ~ ~-1 ~ minecraft:air run tag @s add twoBlocksInAir
execute if entity @s[tag=!staminaExhausted,tag=!bulletTime,scores={traded=1..},predicate=breath_of_the_wild:holding_bow,tag=!busy,tag=!climbing] run function breath_of_the_wild:bullet_time/start
#execute unless entity @s[nbt={OnGround:0b,SelectedItem:{id:"minecraft:bow"}},tag=!bulletTime,tag=!climbing] run tp @e[tag=bowDetector] ^ ^ ^-4
tag @s remove inAirWithBow
execute if entity @s[predicate=!breath_of_the_wild:on_ground,predicate=breath_of_the_wild:holding_bow,tag=!bulletTime,tag=!climbing] run function breath_of_the_wild:tools/tp_to_predicted
execute if entity @s[tag=!inAirWithBow] run tp @e[tag=bowDetector] ~ -100 ~
execute if entity @s[tag=!inAirWithBow] run kill @e[tag=bowDetector]

execute if entity @s[tag=paragliding] run function breath_of_the_wild:paraglider/tick
execute as @e[predicate=breath_of_the_wild:arrows/hit/elemental] at @s anchored eyes run function breath_of_the_wild:arrows/hit/elemental

execute if entity @s[tag=bulletTime] run function breath_of_the_wild:bullet_time/tick

execute as @e[scores={iceTimer=0..}] at @s run function breath_of_the_wild:effects/ice/tick
execute as @e[tag=electrocuted] at @s run function breath_of_the_wild:effects/electrocute/tick

execute if entity @s[scores={jump=1..},predicate=!breath_of_the_wild:on_ground,tag=galeReady,tag=!revaliDisabled] run function breath_of_the_wild:abilities/revali/cancel_gale
execute if entity @s[scores={jump=1..},predicate=breath_of_the_wild:on_ground] run function breath_of_the_wild:event_handlers/jump_landed

scoreboard players operation sneakTimeOld sneakTime -= @s sneakTime
execute if entity @s[tag=!crouching] if score sneakTimeOld sneakTime matches -1 run function breath_of_the_wild:event_handlers/start_crouch
execute if entity @s[tag=crouching] if score sneakTimeOld sneakTime matches 0 run function breath_of_the_wild:event_handlers/release_crouch
execute store result score sneakTimeOld sneakTime run scoreboard players get @s sneakTime

tag @s remove tickingPrimeDaruk
tag @s remove tickingPrimeUrbosa
execute unless score galeCounter timers matches 0..4 if entity @s[tag=crouching,tag=!climbing,tag=!paragliding,tag=!darukDisabled] run tag @s add tickingPrimeDaruk
execute unless score galeCounter timers matches 0..4 if entity @s[tag=crouching,tag=!climbing,tag=!paragliding,tag=!urbosaDisabled,predicate=breath_of_the_wild:on_ground] if entity @s[scores={sneakTime=30..}] run tag @s add tickingPrimeUrbosa

execute if entity @s[tag=!paragliding,tag=!tickingPrimeDaruk] run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @s[tag=!tickingPrimeUrbosa] run tp @e[tag=urbosaStand] ~ 0 ~
execute if entity @s[tag=!tickingPrimeUrbosa] run kill @e[tag=urbosaStand]

execute if entity @s[tag=tickingPrimeDaruk] run function breath_of_the_wild:abilities/daruk/tick_prime
execute if entity @s[tag=tickingPrimeUrbosa] run function breath_of_the_wild:abilities/urbosa/tick_prime

execute rotated ~180 0 positioned 0.5 0.0 0.5 positioned ^ ^ ^0.7071067932882 align xz positioned ~0.5 ~ ~0.5 facing 0.5 0.0 0.5 positioned ^0.4 ^ ^0.4 align xz facing 0.0 0.0 0.0 positioned as @s run function breath_of_the_wild:climb/base
#execute if entity @s[tag=!staminaExhausted,tag=!climbJumping] if block ~ ~-1 ~ #breath_of_the_wild:intangible at @s rotated ~180 0 positioned 0.5 0.0 0.5 positioned ^ ^ ^0.7071067932882 align xz positioned ~0.5 ~ ~0.5 facing 0.5 0.0 0.5 positioned ^0.4 ^ ^0.4 align xz facing 0.0 0.0 0.0 positioned as @s if block ^ ^ ^.31 #breath_of_the_wild:intangible unless block ^ ^ ^.4 #breath_of_the_wild:intangible run function breath_of_the_wild:climb/tick_stopped
#execute if entity @s[tag=!staminaExhausted,tag=!climbJumping] if block ~ ~-1 ~ #breath_of_the_wild:intangible at @s rotated ~180 0 positioned 0.5 0.0 0.5 positioned ^ ^ ^0.7071067932882 align xz positioned ~0.5 ~ ~0.5 facing 0.5 0.0 0.5 positioned ^0.4 ^ ^0.4 align xz facing 0.0 0.0 0.0 positioned as @s unless block ^ ^ ^.33 #breath_of_the_wild:intangible run function breath_of_the_wild:climb/tick
#execute if entity @s[tag=climbing] run function breath_of_the_wild:tick_movement_check
#execute if entity @s[tag=climbing,tag=!climbJumpEnabled] at @s rotated ~180 0 positioned 0.5 0.0 0.5 positioned ^ ^ ^0.7071067932882 align xz positioned ~0.5 ~ ~0.5 facing 0.5 0.0 0.5 positioned ^0.4 ^ ^0.4 align xz facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^.43 if block ~ ~ ~ #breath_of_the_wild:intangible run function breath_of_the_wild:climb/end
#execute if entity @s[tag=climbing,tag=staminaExhausted] run function breath_of_the_wild:climb/end
#execute if entity @s[tag=climbing] unless entity @e[tag=climbJumpMovementCheck] run summon minecraft:armor_stand ~ ~ ~ {Tags:["climbJumpMovementCheck"],Marker:1b,Invisible:1b}
#execute unless entity @s[tag=climbing] if entity @e[tag=climbJumpMovementCheck] run kill @e[tag=climbJumpMovementCheck]

execute if score galeCounter timers matches 0..4 run function breath_of_the_wild:abilities/revali/count_gale

execute if entity @s[tag=galeFlying] run function breath_of_the_wild:abilities/revali/tick_gale

execute if entity @s[scores={traded=1..}] run scoreboard players set @s traded 0

execute if score @s stamina matches 0 run tag @s add staminaExhausted
execute if entity @s[tag=staminaExhausted] run bossbar set minecraft:stamina color red
execute if score @s stamina < @s staminaMax if entity @s[tag=!climbing,tag=!bulletTime,tag=!paragliding,predicate=breath_of_the_wild:on_ground] run scoreboard players add @s stamina 5
#execute as @a if score @s stamina < @s staminaMax run scoreboard players add @s stamina 5
execute if entity @s[tag=staminaExhausted] if score @s stamina = @s staminaMax run bossbar set minecraft:stamina color green
execute if entity @s[tag=staminaExhausted] if score @s stamina = @s staminaMax run tag @s remove staminaExhausted
execute store result bossbar minecraft:stamina value run scoreboard players get @s stamina

#execute if predicate breath_of_the_wild:on_ground run say on ground
#execute unless predicate breath_of_the_wild:on_ground run say NOT on ground
