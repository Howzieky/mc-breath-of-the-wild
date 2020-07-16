execute run particle minecraft:item minecraft:ice ^ ^ ^ .1 .1 .1 .2 500 force
tag @s add frozen
data merge entity @s {NoAI:1b,Invulnerable:1b,Fire:0s}
scoreboard players set @s iceTimer 100
function bullet_time:start_ice
