#data merge entity @s {Color:-1s,crit:0b,damage:0.0d}
execute if entity @p[tag=link,predicate=breath_of_the_wild:levitating] run function breath_of_the_wild:arrows/adjust_for_levitation
execute if entity @p[tag=link,tag=bulletTime] run function breath_of_the_wild:arrows/slow_down

execute if predicate breath_of_the_wild:arrows/type/elemental run function breath_of_the_wild:arrows/new/elemental
