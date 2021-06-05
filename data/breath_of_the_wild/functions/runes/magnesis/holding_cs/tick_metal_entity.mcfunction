data merge entity @s[predicate=!breath_of_the_wild:glowing] {Glowing:1b}
team join magnesisGeneral @s[tag=!selectedMagnesisEntity]
tag @s remove selectedMagnesisEntity

#execute at @e[tag=hitMetalEntity] as @e[type=#breath_of_the_wild:metal_entities,sort=nearest,limit=1] run tag @s add selectedMagnesisEntity


#execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 at @e[tag=magnesisFallingBlock,distance=1..] run summon minecraft:marker ~ ~ ~ {Duration:1s,Tags:["fallingBlockJanitor"]}
#execute at @e[tag=fallingBlockJanitor] run kill @e[tag=magnesisFallingBlock,distance=..1]
#execute at @e[tag=fallingBlockJanitor] run clone 10000 60 10000 10000 60 10000 ~ ~ ~
#execute at @e[tag=fallingBlockJanitor] run particle minecraft:soul_fire_flame ~ ~1 ~ .2 .2 .2 .01 100
#execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=magnesisFallingBlock,distance=..1] run clone ~ ~ ~ ~ ~ ~ 10000 60 10000


#execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #breath_of_the_wild:metal run tp @e[tag=magnesisFallingBlock,nbt={Time:51}] ~ ~ ~
#tag @e[tag=magnesisFallingBlock,tag=old] add 2ndTick
#execute at @e[tag=raytrace] unless entity @e[tag=selectedMagnesisEntity] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #breath_of_the_wild:metal unless entity @e[tag=magnesisBlockSelector,distance=...1] run summon minecraft:falling_block ~ ~ ~ {Time:597,DropItem:0b,BlockState:{Name:"minecraft:yellow_stained_glass"},NoGravity:1b,Glowing:1b,Tags:["magnesisBlockSelector"],NoAI:1b}
