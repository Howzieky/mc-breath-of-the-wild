execute unless entity @s[tag=draggingMagnesis] run function breath_of_the_wild:runes/magnesis/tick_holding_cs_no_dragging

execute if entity @s[tag=draggingMagnesis] anchored eyes run function breath_of_the_wild:runes/magnesis/tick_holding_cs_dragging

#execute at @e[tag=hitMetalEntity] as @e[type=#breath_of_the_wild:metal_entities,sort=nearest,limit=1] run data merge entity @s {Glowing:1b}

#execute if entity @s[scores={selectedRune=4}] as @e[tag=cryonisBlock] at @s positioned ~-.975 ~-.975 ~-.975 if entity @e[tag=raytrace,dx=1.95,dy=2.95,dz=1.95] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=!inCryonis] at @s run function breath_of_the_wild:start_look_at_cryonis
#execute if entity @s[scores={selectedRune=4}] as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:tick_look_at_cryonis
#execute if entity @e[tag=cryonisBlockBeingLookedAt] as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:tick_look_at_cryonis
#execute as @e[tag=cryonisBlockBeingLookedAt] at @s positioned ~-1 ~-1 ~-1 unless entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s positioned ~.5 ~ ~.5 as @e[tag=raytrace] if entity @s[tag=inCryonis] at @s run function breath_of_the_wild:end_look_at_cryonis

#say @e[tag=cryonisBlockBeingLookedAt]
#execute if entity @s[scores={selectedRune=4}] unless entity @e[tag=cryonisBlockBeingLookedAt] at @e[tag=raytrace,limit=1] run tp @e[tag=bigCryonisCube] ~ ~ ~ 0 0
#execute if entity @s[scores={selectedRune=4}] unless entity @e[tag=cryonisBlockBeingLookedAt] at @e[tag=raytrace,tag=!inWater] if block ~ ~ ~ minecraft:water run function breath_of_the_wild:start_look_at_water
#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace,tag=inWater] run function breath_of_the_wild:tick_look_at_water
#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace,tag=inWater] unless block ~ ~ ~ minecraft:water run function breath_of_the_wild:end_look_at_water
