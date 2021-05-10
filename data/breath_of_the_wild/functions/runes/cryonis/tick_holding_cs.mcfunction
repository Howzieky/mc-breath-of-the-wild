execute unless entity @e[tag=raytrace] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10000s,Tags:["raytrace"],NoGravity:1b}
execute as @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function breath_of_the_wild:tools/start_raytrace

execute if entity @s[scores={selectedRune=4}] as @e[tag=cryonisBlock] at @s positioned ~-.975 ~.025 ~-.975 if entity @e[tag=raytrace,dx=1.95,dy=3.95,dz=1.95] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=!inCryonis] at @s run function breath_of_the_wild:runes/cryonis/look_at/ice/start
#execute if entity @s[scores={selectedRune=4}] as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:tick_look_at_cryonis
execute if entity @e[tag=cryonisBlockBeingLookedAt] as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:runes/cryonis/look_at/ice/tick
execute as @e[tag=cryonisBlockBeingLookedAt] at @s positioned ~-1 ~ ~-1 unless entity @e[tag=raytrace,dx=2,dy=4,dz=2] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:runes/cryonis/look_at/ice/end

#say @e[tag=cryonisBlockBeingLookedAt]
execute if entity @s[scores={selectedRune=4}] unless entity @e[tag=cryonisBlockBeingLookedAt] at @e[tag=raytrace,limit=1] run tp @e[tag=bigCryonisCube] ~ ~ ~ 0 0
execute if entity @s[scores={selectedRune=4}] unless entity @e[tag=cryonisBlockBeingLookedAt] at @e[tag=raytrace,tag=!inWater] if block ~ ~ ~ minecraft:water run function breath_of_the_wild:runes/cryonis/look_at/water/start
execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace,tag=inWater] run function breath_of_the_wild:runes/cryonis/look_at/water/tick
execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace,tag=inWater] unless block ~ ~ ~ minecraft:water run function breath_of_the_wild:runes/cryonis/look_at/water/end
