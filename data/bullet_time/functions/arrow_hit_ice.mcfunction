execute if entity @e[tag=mountedArrow] unless entity @e[tag=hitByArrow] run tag @s add iceArrowMarkerMissed
execute run particle minecraft:item minecraft:ice ~ ~ ~ .1 .1 .1 .2 500 force
execute as @e[tag=hitByArrow] run tag @s add frozen
execute as @e[tag=hitByArrow] at @s run data merge entity @s {NoAI:1b,Invulnerable:1b,Fire:0s}
execute as @e[tag=hitByArrow] at @s run scoreboard players set @s iceTimer 100
execute if entity @s[tag=iceArrowMarkerMissed] if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ ice
execute unless entity @s[tag=iceArrowMarkerMissed] at @e[tag=hitByArrow] if block ~ ~ ~ air if block ~ ~1 ~ air run fill ~ ~ ~ ~ ~1 ~ ice
scoreboard players set @s iceTimer 30
