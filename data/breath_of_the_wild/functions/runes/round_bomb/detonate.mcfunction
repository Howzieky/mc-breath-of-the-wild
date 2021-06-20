particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .4 700 force
summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0s,ignited:1b,Silent:1b}

execute as @e[tag=stasisDirectionHandler,distance=..7] at @s facing entity @e[tag=round_bomb_back] eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stasisDirectionHandler,distance=..7] run tag @s add forceDirection

function breath_of_the_wild:runes/round_bomb/delete

execute as @e[distance=..10,scores={iceTimer=1..}] at @s run function breath_of_the_wild:effects/ice/end

execute positioned ~ ~-2 ~ as @e[type=marker,tag=cryonisBlock,distance=..7] at @s run function breath_of_the_wild:runes/cryonis/break
