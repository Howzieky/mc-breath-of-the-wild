execute unless entity @p[distance=..2] run particle minecraft:electric_spark ~ ~ ~ .1 .1 .1 1 3 force
execute if block ~ ~ ~ water run function breath_of_the_wild:arrows/in_water/shock
