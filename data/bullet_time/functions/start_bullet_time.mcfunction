execute if entity @s[tag=paragliding] run function bullet_time:end_paraglider
tag @s add bulletTime
execute as @e[type=!player,type=!arrow] run data merge entity @s {NoAI:1b}
execute as @e[type=arrow] run function bullet_time:slow_arrow
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:[bulletTimeMovementCheck]}
