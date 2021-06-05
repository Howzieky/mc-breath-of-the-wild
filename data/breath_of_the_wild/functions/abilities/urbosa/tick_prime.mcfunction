execute if entity @s[scores={sneakTime=30}] run scoreboard players set @s damageDealt 0
execute if entity @s[scores={sneakTime=30..40}] run summon evoker ~ ~-2 ~ {DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,Tags:["urbosaStand"],Rotation:[0.0f,90.0f],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={sneakTime=30..40}] run team join noCollide @e[tag=urbosaStand]
execute if entity @s[scores={sneakTime=30..40}] at @s as @e[tag=urbosaStand] rotated as @s run tp @s ^ ^ ^.2 ~50 ~-16

execute unless entity @p[tag=link,predicate=breath_of_the_wild:looking_at_stasis_target] at @s as @e[tag=urbosaStand] rotated as @s run tp @s ~ ~ ~ ~-12.5 ~
execute if entity @p[tag=link,predicate=breath_of_the_wild:looking_at_stasis_target] at @s as @e[tag=urbosaStand] rotated as @s run tp @s ~ ~-2 ~ ~-12.5 ~
#execute at @e[tag=urbosaStand] run particle dust 0 1 1 4 ^ ^ ^30 0 0 0 0 1 force
#execute at @e[tag=urbosaStand] run particle dust 0 1 1 4 ^ ^ ^-30 0 0 0 0 1 force
execute at @e[tag=urbosaStand] run particle minecraft:electric_spark ^ ^ ^30 .1 .1 .1 .5 50 force
execute at @e[tag=urbosaStand] run particle minecraft:electric_spark ^ ^ ^-30 .1 .1 .1 .5 50 force
#particle minecraft:electric_spark ~ ~ ~ 30 30 30 1 50 force

execute if score @s damageDealt matches 1.. unless entity @e[predicate=breath_of_the_wild:looking_at_stasis_target] run function breath_of_the_wild:abilities/urbosa/start_animation
