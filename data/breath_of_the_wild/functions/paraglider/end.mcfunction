kill @e[tag=paraglider]
tag @s remove paragliding
effect clear @s minecraft:levitation
tp @s @s
tag @s add notReallyOnGround
attribute @s minecraft:generic.knockback_resistance base set 0
