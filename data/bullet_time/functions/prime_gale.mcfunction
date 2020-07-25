say @e[tag=galePrimed]
tag @e[tag=galePrimed] add galeReady
execute as @e[tag=galePrimed] at @s run playsound minecraft:item.elytra.flying neutral @s
execute as @e[tag=galePrimed] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["galeStand"],Marker:1b,Invisible:1b}
execute as @e[tag=galePrimed] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000s,Tags:["updraftParticles"]}
tag @e[tag=galePrimed] remove galePrimed
