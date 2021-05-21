#say one
function breath_of_the_wild:arrows/hit/shock
execute as @e[type=!arrow,distance=..15,tag=!link,team=!ghostGlow,tag=!bowDetector] at @s run function breath_of_the_wild:effects/electrocute/start

#execute rotated 90 0 run function breath_of_the_wild:effects/lightning/start_2
#execute rotated 180 0 run function breath_of_the_wild:effects/lightning/start_2
#execute rotated 270 0 run function breath_of_the_wild:effects/lightning/start_2
#execute rotated 0 -90 run function breath_of_the_wild:effects/lightning/start_2
#say two
particle minecraft:electric_spark ~ ~ ~ 0 0 0 5 400
kill @s


scoreboard players set length lightningVars 3
scoreboard players set segmentCount lightningVars 12
execute positioned ~ ~1.5 ~ facing entity @e[type=!arrow,distance=..15,tag=!link,tag=!championGhost,tag=!bowDetector] eyes run function breath_of_the_wild:effects/lightning/start_2
execute as @e[type=!arrow,distance=..15,tag=!link,tag=!championGhost,tag=!bowDetector] run function breath_of_the_wild:effects/damage
