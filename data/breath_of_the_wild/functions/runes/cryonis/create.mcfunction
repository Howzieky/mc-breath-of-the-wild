tag @e[tag=raytrace] remove failed
scoreboard players remove @e[tag=cryonisBlock] cryonisList 1
execute align x align y align z run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:10000s,Tags:["cryonisBlock"]}
scoreboard players set @e[tag=cryonisBlock,tag=!old] cryonisList 3
execute at @e[tag=cryonisBlock,tag=!old] run fill ~-1 ~ ~-1 ~1 ~3 ~1 ice
#execute at @e[tag=cryonisBlock,tag=!old] positioned ~-1 ~ ~-1 as @e[dx=1,dy=3,dz=1] at @e[tag=cryonisBlock,tag=!old]
execute as @e[scores={cryonisList=0}] at @s run function breath_of_the_wild:runes/cryonis/break
tag @e[tag=raytrace] remove justBrokeCyronis
