execute unless entity @e[tag=magnesisTarget] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["magnesisTarget"],Duration:10000}


execute as @e[tag=magnesisTarget] run function breath_of_the_wild:tools/store_pos
execute as @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:tools/store_pos

scoreboard players operation @e[tag=selectedMagnesisEntity] xPos -= @e[tag=magnesisTarget] xPos
scoreboard players operation @e[tag=selectedMagnesisEntity] yPos -= @e[tag=magnesisTarget] yPos
scoreboard players operation @e[tag=selectedMagnesisEntity] zPos -= @e[tag=magnesisTarget] zPos

execute at @e[tag=magnesisTarget] as @e[tag=selectedMagnesisEntity,limit=1] if entity @s[distance=2..] run function breath_of_the_wild:runes/magnesis/slow

execute as @e[tag=selectedMagnesisEntity,limit=1] store result entity @s Motion[0] double -.001 run scoreboard players get @s xPos
execute as @e[tag=selectedMagnesisEntity,limit=1] store result entity @s Motion[1] double -.001 run scoreboard players get @s yPos
execute as @e[tag=selectedMagnesisEntity,limit=1] store result entity @s Motion[2] double -.001 run scoreboard players get @s zPos

execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:0}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^3
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:1}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^6
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:2}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^9
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:3}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^12
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:4}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^15
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:5}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^18
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:6}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^21
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:7}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^24
execute as @p[tag=draggingMagnesis,tag=link,nbt={SelectedItemSlot:8}] at @s run tp @e[tag=magnesisTarget] ^ ^ ^27

execute at @e[tag=magnesisTarget] run particle dust 1.0 0.0 0.0 10.0 ~ ~ ~ 0 0 0 0 1
execute at @e[tag=magnesisTarget] anchored feet as @e[tag=selectedMagnesisEntity,limit=1] facing entity @s feet run function breath_of_the_wild:tools/draw_line_to_target


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
