#say I'M TICKING
execute as @s[tag=link] run function breath_of_the_wild:tick/link


execute as @s[type=arrow] run function breath_of_the_wild:arrows/tick/all_arrows
execute if predicate breath_of_the_wild:arrows/hit/elemental anchored eyes run function breath_of_the_wild:arrows/hit/elemental

execute as @s[tag=daruk] run function breath_of_the_wild:abilities/daruk/tick_animation
execute as @s[tag=mipha] run function breath_of_the_wild:abilities/mipha/tick_animation
execute as @s[tag=urbosa] run function breath_of_the_wild:abilities/urbosa/tick_animation

execute as @s[tag=square_bomb_back] at @s run function breath_of_the_wild:runes/square_bomb/tick_physics
execute as @s[tag=round_bomb_back] at @s run function breath_of_the_wild:runes/round_bomb/tick_physics
execute as @s[tag=stasisDirectionHandler] run function breath_of_the_wild:runes/stasis/live_direction_handler
execute as @s[tag=stasisFrozen] at @s run function breath_of_the_wild:runes/stasis/live

execute as @s[scores={iceTimer=0..}] run function breath_of_the_wild:effects/ice/tick
execute as @s[tag=electrocuted] run function breath_of_the_wild:effects/electrocute/tick

execute if score cryonisTimer timers matches 1.. as @s[type=minecraft:falling_block,tag=centerCryonisAnimation] run function breath_of_the_wild:runes/cryonis/tick_creation

#TODO: Add a flag for whether there is an updraft alive
execute unless entity @e[tag=updraftParticles] run tag @s remove inUpdraft
execute as @s[tag=updraftParticles] run function breath_of_the_wild:effects/updraft/tick

tag @s[tag=!old] add old
