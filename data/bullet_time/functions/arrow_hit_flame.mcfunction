execute run particle minecraft:flame ~ ~ ~ .1 .1 .1 .1 100 force
execute as @e[tag=hitByArrow] run data merge entity @s {Fire:100s}
