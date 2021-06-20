execute as @p[tag=link] run function breath_of_the_wild:tools/link_data_to_scoreboard

execute store result score @s yMotion run data get entity @s Motion[1] 1000
scoreboard players operation @s yMotion -= @p[tag=link] yMotion
execute store result entity @s Motion[1] double .001 run scoreboard players get @s yMotion
