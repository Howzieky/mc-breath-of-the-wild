execute if block ~ ~.3 ~ water run function breath_of_the_wild:runes/square_bomb/float
execute as @s[predicate=breath_of_the_wild:on_ground] positioned ~ ~-.00000001 ~ run function breath_of_the_wild:runes/square_bomb/tick_physics_on_ground
execute at @e[tag=square_bomb_front] run particle minecraft:soul_fire_flame ~ ~1.3 ~ 0 0 0 0 1 force
execute at @s positioned ~ ~-.7 ~ run tp @e[tag=square_bomb_front] ~ ~ ~
execute as @p[tag=link,distance=70..] run function breath_of_the_wild:runes/square_bomb/delete
