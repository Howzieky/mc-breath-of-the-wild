tag @s add draggingMagnesis
summon minecraft:magma_cube 10000 100 10000 {Size:1,Silent:1b,ActiveEffects:[{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Tags:["selectedMagnesisEntity"]}
summon minecraft:pig 10000 100 10000 {NoAI:1b,PersistenceRequired:1b,Invisible:0b,Marker:1b,Passengers:[{id:"falling_block",Glowing:1b,BlockState:{Name:"minecraft:grass_block"},Time:-100000,Tags:["magnesisFallingBlock"],Team:"magnesisSpecific"}],Tags:["magnesisBlockCarrier"]}
#summon minecraft:falling_block 10000 100 10000 {NoGravity:1b,Glowing:1b,BlockState:{Name:"minecraft:grass_block"},Time:-100000,Tags:["magnesisFallingBlock","magnesisBlockCarrier"],Team:"magnesisSpecific"}

loot spawn 10000 100 10000 mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:"silk_touch",lvl:1s}]}
setblock ~ ~ ~ air

execute as @e[tag=magnesisFallingBlock] at @s run data modify entity @s BlockState.Name set from entity @e[type=item,limit=1,sort=nearest] Item.id
execute as @e[tag=magnesisFallingBlock] at @s run kill @e[type=item,limit=1,sort=nearest]
tp @e[tag=selectedMagnesisEntity] ~ ~ ~
tp @e[tag=magnesisBlockCarrier] ~ ~ ~
data merge entity @e[tag=magnesisFallingBlock,limit=1] {Air:1s}
data merge entity @e[tag=magnesisFallingBlock,limit=1] {Air:1s}
 
