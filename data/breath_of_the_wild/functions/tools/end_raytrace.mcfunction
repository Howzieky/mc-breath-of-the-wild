summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["raytrace"],Duration:1s}
execute if entity @s[tag=hitMetalEntity] run tag @e[type=marker,tag=raytrace] add hitMetalEntity
tag @s remove hitMetalEntity
