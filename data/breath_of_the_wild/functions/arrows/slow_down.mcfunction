execute as @p[tag=link] run function breath_of_the_wild:tools/update_scoreboards
#tellraw Howzieky ["Arrow: ", {"nbt":"Motion[1]","entity":"@s"}, " -- Player: ", {"nbt":"Motion[1]","entity":"Howzieky"}]
execute store result score @s mx run data get entity @s Motion[0] 1000
execute store result score @s my run data get entity @s Motion[1] 1000
execute store result score @s mz run data get entity @s Motion[2] 1000
#tellraw Howzieky ["Arrow: ", {"score":{"name":"@s","objective":"my"}}, " -- Player: ", {"score":{"name":"Howzieky","objective":"my"}}]
scoreboard players operation @s my -= @p[tag=link] my
#tellraw Howzieky ["Arrow: ", {"score":{"name":"@s","objective":"my"}}, " -- Player: ", {"score":{"name":"Howzieky","objective":"my"}}]
execute store result score @s arrowDamage run data get entity @s damage 10
execute store result entity @s damage double 1 run scoreboard players get @s arrowDamage
execute store result score @s creeperFuse run data get entity @s Fuse 10
execute store result entity @s Fuse double 10 run scoreboard players get @s creeperFuse

tag @s add self
#execute as @p[distance=..2] at @s anchored eyes run tp @s[tag=!old] ^ ^ ^1
tag @s remove self

tag @s[nbt={crit:1b}] add crit
data merge entity @s {NoGravity:1b,crit:0b}
tag @s add bulletTimeSlowed
