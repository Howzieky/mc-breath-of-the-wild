execute at @s[tag=iceArrow,nbt={inGround:0b}] unless entity @e[type=player,distance=..2] run particle minecraft:item minecraft:ice ~ ~ ~ 0 0 0 .1 10 force
execute at @s[tag=flameArrow] unless entity @e[type=player,distance=..2] run particle minecraft:flame ~ ~ ~ 0 0 0 .01 1 force
execute at @e[tag=bombArrow] unless entity @e[type=player,distance=..2] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 4 force
execute at @e[tag=bombArrow] unless entity @e[type=player,distance=..2] run particle minecraft:flame ~ ~ ~ 0 0 0 .01 1 force
execute at @e[tag=ancientArrow] unless entity @e[type=player,distance=..2] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .01 1 force
execute at @s[tag=ancientArrow] unless entity @e[type=player,distance=..2] run particle minecraft:enchanted_hit ~ ~ ~ .1 .1 .1 .2 5 force
