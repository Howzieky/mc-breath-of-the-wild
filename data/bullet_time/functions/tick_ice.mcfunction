execute at @e[tag=frozen] run particle minecraft:firework ~ ~1.5 ~ .1 .25 .1 0 1
execute if entity @s[scores={iceTimer=1}] run function bullet_time:end_ice

execute at @e[scores={iceTimer=1..},tag=ice,tag=!hitEntity] run particle minecraft:firework ~ ~1 ~ .65 .25 .65 0 1
#execute at @e[scores={iceTimer=1},tag=iceArrowMarkerMissed] if block ~ ~ ~ ice run fill ~ ~ ~ ~ ~ ~ air destroy

scoreboard players remove @s iceTimer 1
