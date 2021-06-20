tag @s remove liveSquareBomb
kill @e[tag=square_bomb]
item modify entity @s[scores={selectedRune=1}] hotbar.6 breath_of_the_wild:shiekah_slate/square_bomb
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .1 500 force
