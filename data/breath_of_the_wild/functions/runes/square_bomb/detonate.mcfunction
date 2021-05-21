tag @s remove liveSquareBomb
execute at @e[tag=square_bomb_back] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .4 700 force
execute at @e[tag=square_bomb_back] run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0s,ignited:1b}
kill @e[tag=square_bomb]

item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/square_bomb
