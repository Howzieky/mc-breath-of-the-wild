execute if score galeFlyingCounter timers matches 50.. run tag @s remove galeFlying
execute if score galeFlyingCounter timers matches 50.. run kill @e[tag=galeStand]
execute if score galeFlyingCounter timers matches 50.. at @e[tag=revali] run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 .3 50 force
execute if score galeFlyingCounter timers matches 50.. run kill @e[tag=revali]
