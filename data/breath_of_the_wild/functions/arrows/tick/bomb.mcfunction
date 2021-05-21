execute unless entity @p[distance=..2] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 4 force
execute unless entity @p[distance=..2] run particle minecraft:flame ~ ~ ~ 0 0 0 .01 1 force
execute if predicate breath_of_the_wild:flaming run function breath_of_the_wild:arrows/flaming/bomb
