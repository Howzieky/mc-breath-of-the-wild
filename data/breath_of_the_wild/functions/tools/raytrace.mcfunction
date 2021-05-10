execute at @s run tp @s ^ ^ ^.5
#execute at @s anchored eyes run particle minecraft:soul_fire_flame ^ ^ ^ 0 0 0 0 3


execute if entity @s[tag=stopAtMetal] if entity @e[distance=..2,type=#breath_of_the_wild:metal_entities] run tag @s add hitMetalEntity
execute at @s if block ~ ~ ~ air if entity @p[tag=link,distance=..70] unless entity @s[tag=hitMetalEntity] run function breath_of_the_wild:tools/raytrace
