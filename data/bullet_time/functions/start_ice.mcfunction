summon area_effect_cloud ~ ~ ~ {Tags:["newIce","ice"],Duration:1000s}
execute if entity @s[type=!arrow] run tag @e[tag=newIce] add hitEntity
scoreboard players set @e[tag=newIce] iceTimer 100
execute as @e[tag=newIce] if entity @s[tag=hitEntity] if block ~ ~ ~ air if block ~ ~1 ~ air run fill ~ ~ ~ ~ ~1 ~ ice
execute as @e[tag=newIce] if entity @s[tag=!hitEntity] if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ ice
tag @e[tag=newIce] remove newIce
