effect give @s levitation 1 254 true
effect give @s slowness 1 2 true

execute at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 3 force
execute as @e[type=arrow,tag=!bulletTimeSlowed] store result score @s mx run data get entity @s Motion[0] 1000
execute as @e[type=arrow,tag=!bulletTimeSlowed] store result score @s my run data get entity @s Motion[1] 1000
execute as @e[type=arrow,tag=!bulletTimeSlowed] store result score @s mz run data get entity @s Motion[2] 1000
execute as @e[type=arrow,tag=!bulletTimeSlowed] store result score @s arrowDamage run data get entity @s damage 10
execute as @e[type=arrow,tag=!bulletTimeSlowed] store result entity @s damage double 1 run scoreboard players get @s arrowDamage
execute as @e[type=creeper,tag=!bulletTimeSlowed] store result score @s creeperFuse run data get entity @s Fuse 10
execute as @e[type=creeper,tag=!bulletTimeSlowed] store result entity @s Fuse double 10 run scoreboard players get @s creeperFuse
scoreboard players operation @e[type=arrow,tag=!bulletTimeSlowed,tag=!customArrow] my -= @s my
execute at @s anchored eyes run tp @e[tag=!old,type=arrow] ^ ^ ^1
tag @e[nbt={crit:1b}] add crit
execute as @e[tag=!bulletTimeSlowed,type=arrow] run data merge entity @s {NoGravity:1b,crit:0b}
tag @e[tag=!bulletTimeSlowed] add bulletTimeSlowed
execute as @e[tag=bulletTimeSlowed,tag=customArrow] store result entity @s Motion[0] double .0001 run scoreboard players get @s mx
execute as @e[tag=bulletTimeSlowed,tag=customArrow] store result entity @s Motion[1] double .0001 run scoreboard players get @s my
execute as @e[tag=bulletTimeSlowed,tag=customArrow] store result entity @s Motion[2] double .0001 run scoreboard players get @s mz

execute if score @s stamina matches 0.. run scoreboard players remove @s stamina 1

execute as @s[nbt={OnGround:1b},tag=!notReallyOnGround] run tag @s add removeBulletTime
execute as @s[nbt=!{SelectedItem:{id:"minecraft:bow"}}] run tag @s add removeBulletTime
execute as @s[scores={stamina=0}] run tag @s add removeBulletTime
execute as @s[tag=removeBulletTime] run function bullet_time:end_bullet_time
