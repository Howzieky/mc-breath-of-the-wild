execute store result score @s my run data get entity @s Motion[1] 1000
scoreboard players operation @s my -= @p[tag=link] my
execute store result entity @s Motion[1] double .001 run scoreboard players get @s my
