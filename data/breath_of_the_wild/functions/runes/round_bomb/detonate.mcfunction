tag @s remove liveRoundBomb
execute at @e[tag=round_bomb_back] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .4 800 force
execute at @e[tag=round_bomb_back] run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0s,ignited:1b}
kill @e[tag=round_bomb]

item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/round_bomb
