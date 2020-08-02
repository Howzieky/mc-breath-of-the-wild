execute at @s run playsound minecraft:item.elytra.flying neutral @s
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["galeStand"],Marker:1b,Invisible:1b}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000s,Tags:["updraftParticles"]}
tag @s add galeReady
