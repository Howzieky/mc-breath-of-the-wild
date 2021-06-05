#execute as @s[tag=twoBlocksInAir,tag=!bulletTime,predicate=!breath_of_the_wild:on_ground] run function breath_of_the_wild:bullet_time/start
schedule function breath_of_the_wild:tools/start_selected_arrow 1t replace
advancement revoke @s only breath_of_the_wild:inventory_changed
#execute positioned ~ ~1.2 ~ anchored eyes run particle minecraft:enchant ^-.5 ^-.1 ^1 0 0 0 10 10 force
#execute anchored eyes run particle minecraft:soul_fire_flame ^-.5 ^ ^1 0 0 0 0 1 force
#execute anchored eyes run particle minecraft:enchanted_hit ^-.5 ^ ^1 .1 .1 .1 .2 1 force
