execute if score @s urbosaTimer matches 30 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 .3 100 force
execute if score @s urbosaTimer matches 30 run kill @s
scoreboard players add @s urbosaTimer 1
