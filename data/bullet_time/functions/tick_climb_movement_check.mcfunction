execute as @e[tag=climbJumpMovementCheck] store result entity @s Pos[1] double .015625 run data get entity @a[tag=link,limit=1] Pos[1] 64
execute as @e[tag=climbJumpMovementCheck] at @s if entity @p[tag=link,distance=.1..] run function bullet_time:jump_climb_horizontal_moved
