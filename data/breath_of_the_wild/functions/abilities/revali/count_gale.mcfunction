execute if entity @s[tag=galeCounting] run scoreboard players add galeCounter timers 1
execute if entity @s[tag=galeCounting] if score galeCounter timers matches 5.. run tag @s remove galeCounting

execute if score galeCounter timers matches 0..4 if entity @s[tag=crouching,tag=!galeReady,nbt={OnGround:1b},tag=!revaliDisabled] run effect give @s slowness 1000000 30 true
execute if score galeCounter timers matches 0..4 if entity @s[tag=!galeReady,nbt={OnGround:1b},tag=!revaliDisabled,scores={sneakTime=15..}] run function breath_of_the_wild:abilities/revali/prime_gale

execute if entity @s[tag=galeReady] run particle minecraft:instant_effect ^ ^ ^ 1 .1 1 0 5 force
execute if entity @s[tag=galeReady] run particle minecraft:soul_fire_flame ~ ~ ~ 1 .1 1 .01 2 force
