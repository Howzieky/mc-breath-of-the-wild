#execute as @p[tag=link] run function breath_of_the_wild:tools/link_data_to_scoreboard

effect give @s levitation 1 254 true
effect give @s slowness 1 2 true

execute as @e[tag=bulletTimeSlowed,tag=!stasisFrozen] store result entity @s Motion[0] double .001 run scoreboard players get @s xMotion
execute as @e[tag=bulletTimeSlowed,tag=!stasisFrozen] store result entity @s Motion[1] double .001 run scoreboard players get @s yMotion
execute as @e[tag=bulletTimeSlowed,tag=!stasisFrozen] store result entity @s Motion[2] double .001 run scoreboard players get @s zMotion

execute at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 3 force

execute as @e[distance=..2] unless entity @s[type=!zombie,type=!creeper,type=!skeleton] run function breath_of_the_wild:tools/knockback_entity
execute as @e[tag=bulletTimeMovementCheck] store result entity @s Pos[1] double .015625 run data get entity @p[tag=link] Pos[1] 64
execute as @e[tag=bulletTimeMovementCheck] at @s run function breath_of_the_wild:bullet_time/movement_check

execute if score @s stamina matches 0.. run scoreboard players remove @s stamina 1

execute as @s[tag=onGround,tag=!bulletTimeMovedBack,tag=!notReallyOnGround] run tag @s add removeBulletTime
execute unless predicate breath_of_the_wild:holding_bow run tag @s add removeBulletTime
execute as @s[scores={stamina=0}] run tag @s add removeBulletTime
execute as @s[tag=removeBulletTime] run function breath_of_the_wild:bullet_time/end
tag @s remove bulletTimeMovedBack
