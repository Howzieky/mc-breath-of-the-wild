execute if block ~ ~.3 ~ water run function breath_of_the_wild:runes/round_bomb/float
execute as @s[predicate=breath_of_the_wild:no_gravity] positioned ~ ~-.00000001 ~ run function breath_of_the_wild:runes/round_bomb/tick_physics_no_gravity
execute at @e[tag=round_bomb_front] run particle minecraft:soul_fire_flame ~ ~1.3 ~ 0 0 0 0 1 force
execute positioned ~ ~-.7 ~ run tp @e[tag=round_bomb_front] ~ ~ ~
#execute unless entity @s[predicate=!breath_of_the_wild:on_ground] run say !onGround
#execute if block ~ ~ ~ water run say !inWater
execute if entity @s[predicate=breath_of_the_wild:on_ground] run data merge entity @s {NoGravity:1b}

execute if entity @s[predicate=!breath_of_the_wild:no_gravity] run function breath_of_the_wild:runes/round_bomb/tick_cancel_drag
