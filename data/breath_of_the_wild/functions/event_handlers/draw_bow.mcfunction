execute as @s[tag=twoBlocksInAir,tag=!bulletTime,tag=!climbing,predicate=!breath_of_the_wild:on_ground] run function breath_of_the_wild:bullet_time/start
advancement revoke @s only breath_of_the_wild:draw_bow
execute unless score arrowType variables matches 0 anchored eyes positioned ^-.5 ^ ^1 run function breath_of_the_wild:arrows/drawing_particles/elemental
