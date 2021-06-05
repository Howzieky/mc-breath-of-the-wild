tag @s add frozen
data merge entity @s {NoAI:1b,Invulnerable:1b,Fire:0s}
scoreboard players set @s iceTimer 100

summon marker ~ ~ ~ {Tags:["newIce","ice"]}
execute if entity @s[type=!arrow] run tag @e[tag=newIce] add hitEntity
scoreboard players set @e[tag=newIce] iceTimer 100
execute as @e[tag=newIce] if entity @s[tag=hitEntity] if block ~ ~ ~ air if block ~ ~1 ~ air run fill ~ ~ ~ ~ ~1 ~ ice
execute as @e[tag=newIce] if entity @s[tag=!hitEntity] if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ ice
tag @e[tag=newIce] remove newIce
