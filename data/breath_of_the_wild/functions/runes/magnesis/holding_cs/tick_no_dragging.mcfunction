##execute unless entity @e[tag=raytrace] run summon minecraft:marker ~ ~ ~ {Tags:["raytrace","stopAtMetal"]}
##execute unless entity @e[tag=raytrace] run summon minecraft:armor_stand ~ ~ ~ {Tags:["raytrace","stopAtMetal"],NoGravity:1b,Marker:1b}
##execute as @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s anchored eyes run particle flame ^ ^ ^ 0 0 0 0 1

execute as @e[type=#breath_of_the_wild:metal_entities] run function breath_of_the_wild:runes/magnesis/holding_cs/tick_metal_entity
execute rotated as @s anchored eyes run function breath_of_the_wild:runes/magnesis/raytrace
##execute as @e[type=#breath_of_the_wild:metal_entities,predicate=!breath_of_the_wild:glowing] run data merge entity @s {Glowing:1b}
##team join magnesisGeneral @e[type=#breath_of_the_wild:metal_entities]

#tag @e remove selectedMagnesisEntity
#execute at @e[tag=hitMetalEntity] as @e[type=#breath_of_the_wild:metal_entities,sort=nearest,limit=1] run tag @s add selectedMagnesisEntity
#team join magnesisSpecific @e[tag=selectedMagnesisEntity]

##execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 at @e[tag=magnesisFallingBlock,distance=1..] run summon minecraft:marker ~ ~ ~ {Duration:1s,Tags:["fallingBlockJanitor"]}
##execute at @e[tag=fallingBlockJanitor] run kill @e[tag=magnesisFallingBlock,distance=..1]
##execute at @e[tag=fallingBlockJanitor] run clone 10000 60 10000 10000 60 10000 ~ ~ ~
##execute at @e[tag=fallingBlockJanitor] run particle minecraft:soul_fire_flame ~ ~1 ~ .2 .2 .2 .01 100
##execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=magnesisFallingBlock,distance=..1] run clone ~ ~ ~ ~ ~ ~ 10000 60 10000


##execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #breath_of_the_wild:metal run tp @e[tag=magnesisFallingBlock,nbt={Time:51}] ~ ~ ~
##tag @e[tag=magnesisFallingBlock,tag=old] add 2ndTick
#execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #breath_of_the_wild:metal unless entity @e[tag=magnesisBlockSelector,distance=...1] run summon minecraft:falling_block ~ ~ ~ {Time:597,DropItem:0b,BlockState:{Name:"minecraft:yellow_stained_glass"},NoGravity:1b,Glowing:1b,Tags:["magnesisBlockSelector"],NoAI:1b}
#team join magnesisSpecific @e[tag=magnesisBlockSelector]
##tag @e[tag=magnesisBlockSelector] add selectedMagnesisEntity

##execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #breath_of_the_wild:metal unless entity @e[tag=magnesisBlockSelector,distance=...1] run function breath_of_the_wild:summon_block
##kill @e[tag=magnesisBlockSelector,tag=old]

##execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 r
##summon minecraft:falling_block ~ ~2 ~ {Time:1,NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock","test"]}
##data merge entity @e[tag=test,limit=1] {BlockState:{Name:"minecraft:grass_block"}}

##data modify entity @e[tag=magnesisFallingBlock,limit=1]
##execute at @e[tag=raytrace] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .2 .2 .2 .2 100

##say @e[tag=selectedMagnesisEntity]

##execute at @e[tag=hitMetalEntity] as @e[type=#breath_of_the_wild:metal_entities,sort=nearest,limit=1] run data merge entity @s {Glowing:1b}
