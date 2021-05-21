execute if entity @s[tag=galeCounting] run scoreboard players add galeCounter timers 1
execute if entity @s[tag=galeCounting] if score galeCounter timers matches 5.. run tag @s remove galeCounting

execute if score galeCounter timers matches 0..4 if entity @s[tag=crouching,tag=!galeReady,predicate=breath_of_the_wild:on_ground,tag=!revaliDisabled] run effect give @s slowness 1000000 30 true
execute if score galeCounter timers matches 0..4 if entity @s[tag=!galeReady,predicate=breath_of_the_wild:on_ground,tag=!revaliDisabled,scores={sneakTime=15..}] at @s run function breath_of_the_wild:abilities/revali/prime_gale

execute if entity @s[tag=galeReady] run particle minecraft:instant_effect ^ ^ ^ 1 .1 1 0 5 force
execute if entity @s[tag=galeReady] run particle minecraft:soul_fire_flame ~ ~ ~ 1 .1 1 .01 2 force
