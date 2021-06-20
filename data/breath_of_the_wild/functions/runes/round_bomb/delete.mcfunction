tag @s remove liveRoundBomb
kill @e[tag=round_bomb]
item modify entity @s[scores={selectedRune=0}] hotbar.6 breath_of_the_wild:shiekah_slate/round_bomb
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .1 500 force
