execute if entity @s[tag=!old] run function breath_of_the_wild:arrows/new_elemental
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b}]}] run function breath_of_the_wild:arrows/tick_elemental
execute if entity @s[tag=old,tag=!landed,nbt={inGround:1b}] anchored eyes run function breath_of_the_wild:arrows/hit/elemental
