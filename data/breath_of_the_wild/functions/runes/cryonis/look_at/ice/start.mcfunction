tag @e[tag=cryonisBlock,sort=nearest,limit=1] add cryonisBlockBeingLookedAt
execute at @e[tag=cryonisBlockBeingLookedAt] unless entity @e[tag=bigCryonisCube,tag=0] run summon minecraft:magma_cube ~.5 ~ ~.5 {Silent:1b,NoAI:1b,Glowing:1b,Size:5,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Tags:["bigCryonisCube","cryonisCube","0"]}
execute at @e[tag=cryonisBlockBeingLookedAt] unless entity @e[tag=bigCryonisCube,tag=1] run summon minecraft:magma_cube ~.5 ~1 ~.5 {Silent:1b,NoAI:1b,Glowing:1b,Size:5,ActiveEffects:[{Id:14b,Amplifier:100s,Duration:10000s,ShowParticles:0b},{Id:11b,Amplifier:100s,Duration:10000s,ShowParticles:0b}],Tags:["bigCryonisCube","cryonisCube","1"]}
#execute as @e[tag=bigCryonisCube] run data merge entity @s {Glowing:1b}

team join cryonisGlow @e[tag=cryonisCube]
team modify cryonisGlow color red

function breath_of_the_wild:runes/cryonis/look_at/water/end
#schedule function breath_of_the_wild:runes/cryonis/start_glow 5t append
