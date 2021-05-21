#execute at @s anchored eyes run particle minecraft:soul_fire_flame ^ ^ ^ 0 0 0 0 3

#execute at @s anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[tag=raytrace] ~ ~ ~ ~ ~
#tag @e[tag=raytrace] remove hitMetalEntity
#execute as @e[tag=raytrace] run function breath_of_the_wild:tools/raytrace


#execute at @s anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[tag=raytrace] ~ ~ ~ ~ ~
#tag @s remove hitMetalEntity
execute anchored eyes run function breath_of_the_wild:tools/raytrace
