effect give @s levitation 1 254 true
effect give @s slowness 1 2 true

execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[0] double .0001 run scoreboard players get @s mx
execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[1] double .0001 run scoreboard players get @s my
execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[2] double .0001 run scoreboard players get @s mz

execute at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 3 force


execute if score @s stamina matches 0.. run scoreboard players remove @s stamina 1

execute as @s[nbt={OnGround:1b},tag=!notReallyOnGround] run tag @s add removeBulletTime
execute as @s[nbt=!{SelectedItem:{id:"minecraft:bow"}}] run tag @s add removeBulletTime
execute as @s[scores={stamina=0}] run tag @s add removeBulletTime
execute as @s[tag=removeBulletTime] run function bullet_time:end_bullet_time
