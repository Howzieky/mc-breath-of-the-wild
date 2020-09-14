execute if entity @s[tag=!old] run function bullet_time:new_elemental_arrow
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b}]}] run function bullet_time:tick_elemental_arrow
execute if entity @s[tag=old,tag=!landed,nbt={inGround:1b}] anchored eyes run function bullet_time:arrow_hit
