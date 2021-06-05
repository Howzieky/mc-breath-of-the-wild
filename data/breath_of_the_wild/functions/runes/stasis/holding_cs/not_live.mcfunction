#execute as @e[type=!player] run function breath_of_the_wild:runes/stasis/holding_cs/tick_entity
execute as @e[type=#breath_of_the_wild:stasis_capable,tag=!round_bomb,tag=!square_bomb,tag=!paraglider,tag=!stayOnNoCollide] run function breath_of_the_wild:runes/stasis/holding_cs/tick_entity_not_live

#execute if predicate breath_of_the_wild:looking_at rotated as @s anchored eyes run say raytracing
#execute if predicate breath_of_the_wild:looking_at rotated as @s anchored eyes run function breath_of_the_wild:runes/stasis/raytrace
#say @e[tag=lookAtTarget]
team join stasisSpecific @e[tag=stasisTarget]
