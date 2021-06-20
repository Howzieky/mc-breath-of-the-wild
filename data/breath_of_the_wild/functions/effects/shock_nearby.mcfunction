execute as @e[type=!arrow,distance=..15,tag=!link,team=!ghostGlow,tag=!bulletTimeMovementCheck] at @s run function breath_of_the_wild:effects/electrocute/start
particle minecraft:electric_spark ~ ~ ~ 0 0 0 5 400

scoreboard players set length lightningVars 10
scoreboard players set segmentCount lightningVars 7
execute positioned ~ ~1.5 ~ facing entity @e[type=!arrow,distance=..15,tag=!link,tag=!championGhost,tag=!bulletTimeMovementCheck] eyes run function breath_of_the_wild:effects/lightning/start_2
execute as @e[type=!arrow,distance=..15,tag=!link,tag=!championGhost,tag=!bulletTimeMovementCheck] run function breath_of_the_wild:effects/damage
