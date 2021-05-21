

execute as @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:runes/magnesis/calculate_movement

execute at @s[predicate=breath_of_the_wild:selected_item_slot/0] run tp @e[tag=magnesisTarget] ^ ^ ^3
execute at @s[predicate=breath_of_the_wild:selected_item_slot/1] run tp @e[tag=magnesisTarget] ^ ^ ^6
execute at @s[predicate=breath_of_the_wild:selected_item_slot/2] run tp @e[tag=magnesisTarget] ^ ^ ^9
execute at @s[predicate=breath_of_the_wild:selected_item_slot/3] run tp @e[tag=magnesisTarget] ^ ^ ^12
execute at @s[predicate=breath_of_the_wild:selected_item_slot/4] run tp @e[tag=magnesisTarget] ^ ^ ^15
execute at @s[predicate=breath_of_the_wild:selected_item_slot/5] run tp @e[tag=magnesisTarget] ^ ^ ^18
execute at @s[predicate=breath_of_the_wild:selected_item_slot/6] run tp @e[tag=magnesisTarget] ^ ^ ^21
execute at @s[predicate=breath_of_the_wild:selected_item_slot/7] run tp @e[tag=magnesisTarget] ^ ^ ^24
execute at @s[predicate=breath_of_the_wild:selected_item_slot/8] run tp @e[tag=magnesisTarget] ^ ^ ^27

execute at @e[tag=magnesisTarget] run particle dust 1.0 0.0 0.0 1.0 ~ ~ ~ .2 .2 .2 0 10
execute at @e[tag=magnesisTarget] run function breath_of_the_wild:runes/magnesis/draw_line_to_ground
execute at @e[tag=magnesisTarget] anchored feet as @e[tag=selectedMagnesisEntity] facing entity @s feet run function breath_of_the_wild:tools/draw_line_to_target


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
