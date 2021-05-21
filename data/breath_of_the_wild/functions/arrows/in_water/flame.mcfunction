function breath_of_the_wild:arrows/hit/shock
execute as @e[distance=..15,tag=!link,team=!ghostGlow,tag=!bowDetector] at @s run function breath_of_the_wild:effects/electrocute/start
particle minecraft:electric_spark ~ ~ ~ 0 0 0 5 400
kill @s
