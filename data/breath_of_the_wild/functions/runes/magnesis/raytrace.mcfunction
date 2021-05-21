tag @s remove continuingRaytrace
tag @e[type=#breath_of_the_wild:metal_entities,distance=..2,limit=1] add selectedMagnesisEntity
execute if block ~ ~ ~ air if entity @s[distance=..70] unless entity @e[tag=selectedMagnesisEntity] run tag @s add continuingRaytrace
execute unless entity @s[tag=continuingRaytrace] as @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:runes/magnesis/holding_cs/hit_metal_entity
execute unless entity @s[tag=continuingRaytrace] unless entity @e[tag=selectedMagnesisEntity] if block ~ ~ ~ #breath_of_the_wild:metal run function breath_of_the_wild:runes/magnesis/holding_cs/hit_metal_block
execute if entity @s[tag=continuingRaytrace] positioned ^ ^ ^.5 run function breath_of_the_wild:runes/magnesis/raytrace

#particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
