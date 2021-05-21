particle minecraft:electric_spark ^ ^ ^ .1 .1 .1 .5 100 force
particle minecraft:flash ^ ^ ^ 0 0 0 0 1 force
execute if entity @s[type=!arrow] run function breath_of_the_wild:effects/electrocute/start
