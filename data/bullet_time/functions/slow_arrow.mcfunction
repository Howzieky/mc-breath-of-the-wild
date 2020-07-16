execute store result score @s mx run data get entity @s Motion[0] 1000
execute store result score @s my run data get entity @s Motion[1] 1000
execute store result score @s mz run data get entity @s Motion[2] 1000
scoreboard players operation @s my -= @p[distance=..2] my
execute store result entity @s Motion[0] double .0001 run scoreboard players get @s mx
execute store result entity @s Motion[1] double .0001 run scoreboard players get @s my
execute store result entity @s Motion[2] double .0001 run scoreboard players get @s mz

execute store result score @s arrowDamage run data get entity @s damage 10
execute store result entity @s damage double 1 run scoreboard players get @s arrowDamage
execute store result score @s creeperFuse run data get entity @s Fuse 10
execute store result entity @s Fuse double 10 run scoreboard players get @s creeperFuse

tag @s add self
execute as @p[distance=..2] at @s anchored eyes run tp @s[tag=!old] ^ ^ ^1
tag @s remove self



tag @s[nbt={crit:1b}] add crit
data merge entity @s {NoGravity:1b,crit:0b}
tag @s add bulletTimeSlowed
