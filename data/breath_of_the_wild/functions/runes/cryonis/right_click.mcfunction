


execute as @e[tag=cryonisBlockBeingLookedAt] at @s run function breath_of_the_wild:runes/cryonis/break

execute if block ~-1 ~ ~-1 water[level=0] if block ~-1 ~ ~ water[level=0] if block ~-1 ~ ~1 water[level=0] if block ~ ~ ~-1 water[level=0] if block ~ ~ ~ water[level=0] if block ~ ~ ~1 water[level=0] if block ~1 ~ ~-1 water[level=0] if block ~1 ~ ~ water[level=0] if block ~1 ~ ~1 water[level=0] positioned ~-1 ~ ~-1 unless entity @e[dx=2,dy=3,dz=2,tag=!raytrace,tag=!cryonisCube,tag=!bigCryonisCube] positioned ~1 ~-1 ~1 run function breath_of_the_wild:runes/cryonis/create
execute if entity @s[tag=failed] at @e[tag=raytrace] run particle block ice ~ ~2 ~ 1 2 1 0 500
tag @e[tag=raytrace] remove justBrokeCyronis
