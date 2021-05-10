execute if entity @s[tag=paragliding] run function breath_of_the_wild:paraglider/end
tag @s add bulletTime
execute as @e[type=!player,type=!arrow] run data merge entity @s {NoAI:1b}
execute as @e[type=arrow] run function breath_of_the_wild:arrows/slow_down
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:[bulletTimeMovementCheck]}
