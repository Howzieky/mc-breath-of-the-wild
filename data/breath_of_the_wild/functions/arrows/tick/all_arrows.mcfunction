kill @s[tag=tempArrow,tag=old]
execute if entity @s[tag=!old] run function breath_of_the_wild:arrows/new_elemental
execute if entity @s[predicate=breath_of_the_wild:arrows/type/elemental] run function breath_of_the_wild:arrows/tick/elemental
execute if entity @s[tag=old,tag=!landed,predicate=breath_of_the_wild:arrows/in_ground] at @s anchored eyes run function breath_of_the_wild:arrows/hit/elemental
