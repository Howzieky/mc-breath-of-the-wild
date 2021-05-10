tag @s add inCryonis
execute at @e[tag=raytrace] run tag @e[tag=cryonisBlock,sort=nearest,limit=1] add cryonisBlockBeingLookedAt
execute at @e[tag=raytrace] at @e[tag=cryonisBlockBeingLookedAt] unless entity @e[tag=bigCryonisCube,tag=0] run summon minecraft:magma_cube ~.5 ~ ~.5 {Silent:1b,NoAI:1b,Size:5,Glowing:1b,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Tags:["bigCryonisCube","0"]}
execute at @e[tag=raytrace] at @e[tag=cryonisBlockBeingLookedAt] unless entity @e[tag=bigCryonisCube,tag=1] run summon minecraft:magma_cube ~.5 ~ ~.5 {Silent:1b,NoAI:1b,Size:5,Glowing:1b,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Tags:["bigCryonisCube","1"]}
execute as @e[tag=bigCryonisCube] run data merge entity @s {Glowing:1b}

team join cryonisGlow @e[tag=bigCryonisCube]
team modify cryonisGlow color red

execute run function breath_of_the_wild:runes/cryonis/look_at/water/end
