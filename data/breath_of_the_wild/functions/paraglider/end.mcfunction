kill @e[tag=paraglider]
tag @s remove paragliding
effect clear @s[tag=!selectingRune] minecraft:levitation
tp @s @s
tag @s add notReallyOnGround
attribute @s minecraft:generic.knockback_resistance base set 0

#execute as @e[tag=paragliderSlime] run data merge entity @s {Pos:[0.0d,0.0d,0.0d],Health:0.0f,HurtTime:19s}
