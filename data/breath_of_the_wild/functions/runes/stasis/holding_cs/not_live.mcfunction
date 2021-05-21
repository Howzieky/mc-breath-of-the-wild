#execute as @e[type=!player] run function breath_of_the_wild:runes/stasis/holding_cs/tick_entity
execute as @e[predicate=!breath_of_the_wild:glowing,tag=!round_bomb,tag=!square_bomb] run data merge entity @s {Glowing:1b}
team join stasisGeneral @e[type=#breath_of_the_wild:stasis_capable]
tag @e remove stasisTarget
execute rotated as @s anchored eyes run function breath_of_the_wild:runes/stasis/raytrace
team join stasisSpecific @e[tag=stasisTarget]
