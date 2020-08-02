execute if score @s darukTimer matches 10 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .3 100 force
execute if score @s darukTimer matches 10 run kill @s
scoreboard players add @s darukTimer 1
execute as @e run attribute @s minecraft:generic.knockback_resistance base set 0
