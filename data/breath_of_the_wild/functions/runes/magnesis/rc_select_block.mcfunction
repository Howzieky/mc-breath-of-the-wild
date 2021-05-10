#execute as @e[tag=!selectedMagnesisEntity,type=#breath_of_the_wild:metal_entities] run data merge entity @s {Glowing:0b}
kill @e[tag=magnesisBlockSelector]
tag @s add draggingMagnesis
#summon spider 10000 100 10000 {Silent:1b,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Passengers:[{id:"minecraft:armor_stand",Small:1b,Tags:["magnesisBlockSeparator"],Passengers:[{id:"falling_block",Glowing:1b,BlockState:{Name:"minecraft:grass_block"},Time:-100000,Tags:["magnesisFallingBlock"]}]}],Tags:["selectedMagnesisEntity","magnesisBlockCarrier"]}
summon minecraft:turtle 10000 100 10000 {Size:1,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Passengers:[{id:"falling_block",Glowing:1b,BlockState:{Name:"minecraft:grass_block"},Time:-100000,Tags:["magnesisFallingBlock"]}],Tags:["selectedMagnesisEntity","magnesisBlockCarrier"]}
#summon armor_stand 10000 100 10000 {Invisible:1b,Passengers:[{id:"falling_block",Glowing:1b,BlockState:{Name:"minecraft:grass_block"},Time:-100000,Tags:["magnesisFallingBlock"]}],Tags:["selectedMagnesisEntity","magnesisBlockCarrier"]}
team join magnesisSpecific @e[tag=magnesisFallingBlock]
loot spawn 10000 100 10000 mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:"silk_touch",lvl:1s}]}
setblock ~ ~ ~ air
#summon minecraft:falling_block 10000 100 10000 {Time:-1000,DropItem:1b,BlockState:{Name:"minecraft:activator_rail"},NoGravity:1b,Glowing:1b,Tags:["magnesisFallingBlock"],NoAI:1b}
execute as @e[tag=magnesisFallingBlock] at @s run data modify entity @s BlockState.Name set from entity @e[type=item,limit=1,sort=nearest] Item.id
execute as @e[tag=magnesisFallingBlock] at @s run kill @e[type=item,limit=1,sort=nearest]
tp @e[tag=selectedMagnesisEntity] ~ ~ ~

#execute as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s run function breath_of_the_wild:break_cryonis
#execute as @e[tag=raytrace,tag=!justBrokeCyronis] at @s if block ~-1 ~1 ~-1 water if block ~-1 ~1 ~ water if block ~-1 ~1 ~1 water if block ~ ~1 ~-1 water if block ~ ~1 ~ water if block ~ ~1 ~1 water if block ~1 ~1 ~-1 water if block ~1 ~1 ~ water if block ~1 ~1 ~1 water positioned ~-1 ~1 ~-1 unless entity @e[dx=2,dy=3,dz=2,tag=!raytrace,tag=!cryonisCube,tag=!bigCryonisCube] positioned ~1 ~-1 ~1 run function breath_of_the_wild:create_cryonis
#execute if entity @s[tag=failed] at @e[tag=raytrace] run particle block ice ~ ~2 ~ 1 2 1 0 500
#tag @e[tag=raytrace] remove justBrokeCyronisk
#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace] if block ~ ~ ~ minecraft:water run summon minecraft:magma_cube ~ ~ ~ {Silent:1b,NoAI:1b,Size:1,Glowing:1b,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Tags:["cryonisCube","00"]}
