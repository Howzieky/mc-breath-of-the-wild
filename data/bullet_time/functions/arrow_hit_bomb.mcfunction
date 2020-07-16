particle minecraft:flame ~ ~ ~ .2 .2 .2 .3 1000 force
particle minecraft:smoke ~ ~ ~ .2 .2 .2 .3 1000 force
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force

tag @e[distance=..10,scores={iceTimer=1..}] add explodedIce
execute at @e[scores={iceTimer=1..},tag=explodedIce] run fill ~ ~ ~ ~ ~1 ~ air destroy
execute as @e[scores={iceTimer=1..},tag=explodedIce,tag=!bulletTimeSlowed] at @s run data merge entity @s {NoAI:0b}
execute as @e[scores={iceTimer=1..},tag=explodedIce] at @s run data merge entity @s {Invulnerable:0b}
execute as @e[scores={iceTimer=1..},tag=explodedIce] run tag @s remove frozen

scoreboard players set @e[scores={iceTimer=0..},tag=explodedIce,distance=..10] iceTimer -1
execute at @e[tag=explodedIce] run particle minecraft:item minecraft:ice ~ ~ ~ .1 .1 .1 1 500 force
#kill @e[scores={iceTimer=0..},tag=iceArrowMarker,distance=..10]
tag @e[tag=explodedIce] remove explodedIce

summon creeper ~ ~ ~ {Fuse:0s,Tags:["bombArrowCreeper"]}
execute as @e[distance=..10,tag=!bowDetector] run data merge entity @s {Fire:200s}
execute at @e[distance=..10,type=player] run summon minecraft:small_fireball ~ ~3 ~ {Motion:[0.0d,-10.0d,0.0d]}
execute as @e[tag=hitByArrow] run data merge entity @s {Fire:100s}
