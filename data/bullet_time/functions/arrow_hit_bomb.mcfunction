particle minecraft:flame ^ ^ ^ .2 .2 .2 .3 1000 force
particle minecraft:smoke ^ ^ ^ .2 .2 .2 .3 1000 force
particle minecraft:flash ^ ^ ^ 0 0 0 0 1 force

execute as @e[distance=..10,scores={iceTimer=1..}] at @s run function bullet_time:end_ice

summon creeper ~ ~ ~ {Fuse:0s,Tags:["bombArrowCreeper"]}
execute as @e[distance=..10,tag=!bowDetector] run data merge entity @s {Fire:200s}
execute at @e[distance=..10,type=player] run summon minecraft:small_fireball ~ ~3 ~ {Motion:[0.0d,-10.0d,0.0d]}
