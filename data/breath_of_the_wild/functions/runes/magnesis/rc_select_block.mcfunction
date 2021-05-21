tag @s add draggingMagnesis
summon minecraft:turtle 10000 100 10000 {Size:1,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Passengers:[{id:"falling_block",Glowing:1b,BlockState:{Name:"minecraft:grass_block"},Time:-100000,Tags:["magnesisFallingBlock"]}],Tags:["selectedMagnesisEntity","magnesisBlockCarrier"]}

team join magnesisSpecific @e[tag=magnesisFallingBlock]
loot spawn 10000 100 10000 mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:"silk_touch",lvl:1s}]}
setblock ~ ~ ~ air

execute as @e[tag=magnesisFallingBlock] at @s run data modify entity @s BlockState.Name set from entity @e[type=item,limit=1,sort=nearest] Item.id
execute as @e[tag=magnesisFallingBlock] at @s run kill @e[type=item,limit=1,sort=nearest]
tp @e[tag=selectedMagnesisEntity] ~ ~ ~

 
