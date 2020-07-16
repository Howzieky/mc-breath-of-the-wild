execute positioned ~ ~-.375 ~ as @e[type=arrow,distance=...0005,sort=nearest,limit=1] run tag @s add mountedArrow
execute unless entity @e[tag=mountedArrow] as @e[nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] run tag @s add hitByArrow

execute if entity @s[tag=iceArrowMarker] run function bullet_time:arrow_hit_ice
execute if entity @s[tag=flameArrowMarker] run function bullet_time:arrow_hit_flame
execute if entity @s[tag=bombArrowMarker] run function bullet_time:arrow_hit_bomb
execute if entity @s[tag=ancientArrowMarker] run function bullet_time:arrow_hit_ancient

execute as @e[tag=mountedArrow] unless entity @s[tag=!iceArrow,tag=!flameArrow,tag=!bombArrow,tag=!ancientArrow] run kill @s
execute unless entity @s[tag=iceArrowMarker] run kill @s
effect clear @e[tag=hitByArrow] luck
tag @e remove mountedArrow
tag @e remove hitByArrow
tag @s add handledArrowMarker
