effect give @s levitation 1 254 true
effect give @s slowness 1 2 true

execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[0] double .001 run scoreboard players get @s mx
execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[1] double .001 run scoreboard players get @s my
execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[2] double .001 run scoreboard players get @s mz

execute at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 3 force

execute as @e[distance=..2] unless entity @s[type=!zombie,type=!creeper,type=!skeleton] run function bullet_time:knockback_entity
execute as @e[tag=bulletTimeMovementCheck] store result entity @s Pos[1] double .015625 run data get entity @a[tag=link,limit=1] Pos[1] 64
execute as @e[tag=bulletTimeMovementCheck] at @s run function bullet_time:bullet_time_movement_check

execute if score @s stamina matches 0.. run scoreboard players remove @s stamina 1

execute as @s[nbt={OnGround:1b},tag=!bulletTimeMovedBack,tag=!notReallyOnGround] run tag @s add removeBulletTime
execute as @s[nbt=!{SelectedItem:{id:"minecraft:bow"}}] run tag @s add removeBulletTime
execute as @s[scores={stamina=0}] run tag @s add removeBulletTime
execute as @s[tag=removeBulletTime] run function bullet_time:end_bullet_time
tag @s remove bulletTimeMovedBack
