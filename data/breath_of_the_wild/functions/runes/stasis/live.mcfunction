#execute as @e[type=!player] run function breath_of_the_wild:runes/stasis/holding_cs/tick_entity
execute as @e[tag=stasisTarget,predicate=!breath_of_the_wild:stationary] run say hello
execute as @e[tag=stasisTarget] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
#team join stasisGeneral @e[type=#breath_of_the_wild:stasis_capable]
#tag @e remove stasisTarget
#execute rotated as @s anchored eyes run function breath_of_the_wild:runes/stasis/raytrace
#team join stasisSpecific @e[tag=stasisTarget]
#say test
