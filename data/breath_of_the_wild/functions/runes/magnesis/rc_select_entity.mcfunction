execute as @e[type=#breath_of_the_wild:metal_entities,tag=!selectedMagnesisEntity] run data merge entity @s {Glowing:0b}
tag @s add draggingMagnesis

#execute as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s run function breath_of_the_wild:break_cryonis
#execute as @e[tag=raytrace,tag=!justBrokeCyronis] at @s if block ~-1 ~1 ~-1 water if block ~-1 ~1 ~ water if block ~-1 ~1 ~1 water if block ~ ~1 ~-1 water if block ~ ~1 ~ water if block ~ ~1 ~1 water if block ~1 ~1 ~-1 water if block ~1 ~1 ~ water if block ~1 ~1 ~1 water positioned ~-1 ~1 ~-1 unless entity @e[dx=2,dy=3,dz=2,tag=!raytrace,tag=!cryonisCube,tag=!bigCryonisCube] positioned ~1 ~-1 ~1 run function breath_of_the_wild:create_cryonis
#execute if entity @s[tag=failed] at @e[tag=raytrace] run particle block ice ~ ~2 ~ 1 2 1 0 500
#tag @e[tag=raytrace] remove justBrokeCyronis
