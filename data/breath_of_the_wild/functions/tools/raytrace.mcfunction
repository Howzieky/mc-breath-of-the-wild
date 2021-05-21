#execute at @s run tp @s ^ ^ ^.5
execute at @s anchored eyes run particle minecraft:soul_fire_flame ^ ^ ^ 0 0 0 0 3
#say hi

#execute if entity @s[tag=stopAtMetal] if entity @e[distance=..2,type=#breath_of_the_wild:metal_entities] run tag @s add hitMetalEntity
#execute at @s if block ~ ~ ~ air if entity @p[tag=link,distance=..70] unless entity @s[tag=hitMetalEntity] run function breath_of_the_wild:tools/raytrace


# a & b & !c
execute if entity @s[tag=stopAtMetal] if entity @e[type=#breath_of_the_wild:metal_entities,distance=..2] run tag @s add hitMetalEntity
tag @s remove continuingRaytrace
execute if block ~ ~ ~ air if entity @s[distance=..70] unless entity @s[tag=hitMetalEntity] positioned ^ ^ ^.5 run tag @s add continuingRaytrace
#execute unless block ~ ~ ~ air run tag @s remove continuingRaytrace
#execute unless entity @s[distance=..70] run tag @s remove continuingRaytrace
#execute if entity @s[tag=hitMetalEntity] run tag @s remove continuingRaytrace
execute if entity @s[tag=continuingRaytrace] positioned ^ ^ ^.5 run function breath_of_the_wild:tools/raytrace
execute unless entity @s[tag=continuingRaytrace] run function breath_of_the_wild:tools/end_raytrace
