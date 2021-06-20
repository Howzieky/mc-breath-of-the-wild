data modify storage minecraft:breath_of_the_wild flags.urbosaAnimating set value 0b
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 .3 100 force
kill @e[tag=urbosa]
scoreboard players add @s urbosaTimer 1
