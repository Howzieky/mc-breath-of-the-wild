execute if score @s darukTimer matches 10 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .3 100 force
execute if score @s darukTimer matches 10 run kill @s
scoreboard players add @s darukTimer 1
#Changing line 5 to line 6. Don't know why it was using @e and execute, so I'm removing it.
#execute as @e run attribute @s minecraft:generic.knockback_resistance base set 0
attribute @s minecraft:generic.knockback_resistance base set 0