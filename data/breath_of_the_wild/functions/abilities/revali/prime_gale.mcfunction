playsound minecraft:item.elytra.flying neutral @s
summon minecraft:armor_stand ~ ~ ~ {Tags:["galeStand"],Marker:1b,Invisible:1b}
function breath_of_the_wild:effects/updraft/start

tag @s add galeReady
