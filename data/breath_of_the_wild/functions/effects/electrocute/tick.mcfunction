particle minecraft:electric_spark ~ ~1 ~ 0 .5 0 1 3
scoreboard players remove @s electrocuteTimer 1
execute if score @s electrocuteTimer matches 0 run function breath_of_the_wild:effects/electrocute/end
