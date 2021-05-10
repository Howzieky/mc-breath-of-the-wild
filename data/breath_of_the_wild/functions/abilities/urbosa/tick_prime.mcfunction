execute if entity @s[scores={sneakTime=30}] run scoreboard players set @s damageDealt 0
execute if entity @s[scores={sneakTime=30..40}] run summon evoker ~ ~-2 ~ {Silent:1b,NoAI:1b,Tags:["urbosaStand"],Rotation:[0.0f,90.0f],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={sneakTime=30..40}] run team join noCollide @e[tag=urbosaStand]
execute if entity @s[scores={sneakTime=30..40}] at @s as @e[tag=urbosaStand] rotated as @s run tp @s ^ ^ ^.2 ~50 ~-16

execute at @s as @e[tag=urbosaStand] rotated as @s run tp @s ~ ~ ~ ~-12.5 ~
execute at @e[tag=urbosaStand] run particle dust 0 1 1 4 ^ ^ ^30 0 0 0 0 1 force
execute at @e[tag=urbosaStand] run particle dust 0 1 1 4 ^ ^ ^-30 0 0 0 0 1 force
particle minecraft:enchanted_hit ~ ~ ~ 30 30 30 .1 30 force

execute if score @s damageDealt matches 1.. run function breath_of_the_wild:abilities/urbosa/start_animation
