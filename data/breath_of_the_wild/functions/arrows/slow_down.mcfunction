#execute as @p[tag=link] run function breath_of_the_wild:tools/nbt_to_temp_entity
#tellraw @s ["Arrow: ", {"nbt":"Motion[1]","entity":"@s"}, " -- Player: ", {"nbt":"Motion[1]","entity":"@s"}]
execute store result score @s mx run data get entity @s Motion[0] 1000
execute store result score @s my run data get entity @s Motion[1] 1000
execute store result score @s mz run data get entity @s Motion[2] 1000
#tellraw @a ["Arrow: ", {"score":{"name":"@s","objective":"my"}}, " -- Player: ", {"score":{"name":"@p","objective":"my"}}]
#scoreboard players operation @s my -= @p[tag=link] my
#tellraw @a ["Arrow: ", {"score":{"name":"@s","objective":"my"}}, " -- Player: ", {"score":{"name":"@p","objective":"my"}}]
execute store result score @s arrowDamage run data get entity @s damage 10
execute store result entity @s damage double 1 run scoreboard players get @s arrowDamage
execute store result score @s creeperFuse run data get entity @s Fuse 10
execute store result entity @s Fuse double 10 run scoreboard players get @s creeperFuse
#execute as @e[tag=bulletTimeSlowed] store result entity @s Motion[1] double .001 run scoreboard players get @s my

tag @s[predicate=breath_of_the_wild:arrows/crit] add crit
data merge entity @s {NoGravity:1b,crit:0b}
tag @s add bulletTimeSlowed
#say TEST
