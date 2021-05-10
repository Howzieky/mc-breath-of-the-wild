tag @s add holdingCS

#execute at @e[tag=raytrace] run setblock ~ ~1.7 ~ blue_wool

#tag @e[tag=cryonisBlockBeingLookedAt] remove cryonisBlockBeingLookedAt
execute if entity @s[scores={selectedRune=2}] run function breath_of_the_wild:runes/magnesis/tick_holding_cs
execute if entity @s[scores={selectedRune=4}] run function breath_of_the_wild:runes/cryonis/tick_holding_cs



#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~-1 ~2.2 ~.5 0 0 .6 0 1
#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~2 ~2.2 ~.5 0 0 .6 0 1
#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~.5 ~2.2 ~2 .6 0 0 0 1
#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~.5 ~2.2 ~-1 .6 0 0 0 1


#execute as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s positioned ~.5 ~ ~.5 run particle minecraft:instant_effect ~ ~4 ~ .6 0 .6 0 10
#execute as @e[tag=cryonisBlockBeingLookedAt] at @s positioned ~.5 ~ ~.5 run particle minecraft:instant_effect ~ ~4 ~ .6 0 .6 0 10

#execute if entity @s[scores={selectedRune=4}] at @e[tag=raytrace] if block ~ ~ ~ minecraft:water align x align y align z run particle minecraft:firework ~.5 ~2.2 ~-1 .6 0 0 0 1
