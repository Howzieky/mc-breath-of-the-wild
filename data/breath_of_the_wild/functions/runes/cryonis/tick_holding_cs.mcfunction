#execute unless entity @e[tag=raytrace] run summon minecraft:marker ~ ~ ~ {Tags:["raytrace"]}
#execute as @p[predicate=breath_of_the_wild:holding_carrot_on_a_stick] at @s run function breath_of_the_wild:tools/start_raytrace
execute rotated as @s anchored eyes run function breath_of_the_wild:runes/cryonis/raytrace

#execute as @e[tag=cryonisBlock] at @s positioned ~-.975 ~.025 ~-.975 if entity @e[tag=raytrace,dx=1.95,dy=3.95,dz=1.95] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=!inCryonis] at @s run function breath_of_the_wild:runes/cryonis/look_at/ice/start
#execute if entity @s[scores={selectedRune=4}] as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:tick_look_at_cryonis
#execute if entity @e[tag=cryonisBlockBeingLookedAt] as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:runes/cryonis/look_at/ice/tick
#execute as @e[tag=cryonisBlockBeingLookedAt] at @s positioned ~-1 ~ ~-1 unless entity @e[tag=raytrace,dx=2,dy=4,dz=2] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:runes/cryonis/look_at/ice/end

#say @e[tag=cryonisBlockBeingLookedAt]
#execute unless entity @e[tag=cryonisBlockBeingLookedAt] at @e[tag=raytrace,limit=1] run tp @e[tag=bigCryonisCube] ~ ~ ~ 0 0
#execute unless entity @e[tag=cryonisBlockBeingLookedAt] at @e[tag=raytrace,tag=!inWater] if block ~ ~ ~ minecraft:water run function breath_of_the_wild:runes/cryonis/look_at/water/start
#execute at @e[tag=raytrace,tag=inWater] run function breath_of_the_wild:runes/cryonis/look_at/water/tick
#execute at @e[tag=cryonisBlock] run particle witch ~ ~ ~ 1 1 1 0 10 force
