function breath_of_the_wild:tools/nbt_to_link_data_if_stale
execute as @e[tag=climbJumpMovementCheck] store result entity @s Pos[1] double .015625 run data get storage minecraft:breath_of_the_wild linkData.Pos[1] 64
execute as @e[tag=climbJumpMovementCheck] at @s if entity @p[tag=link,distance=.1..] run function breath_of_the_wild:climb/jump_horizontal_moved
