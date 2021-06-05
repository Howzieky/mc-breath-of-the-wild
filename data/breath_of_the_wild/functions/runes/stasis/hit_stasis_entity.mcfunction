#tellraw @a {"nbt":"Health","entity":"@s"}
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1 1
execute at @s run particle minecraft:wax_on ~ ~ ~ 0 0 0 200 30 force
data modify entity @s HurtTime set value 0

#execute if score @p[tag=link] damageDealt matches 1.. run say MELEE
#execute unless score @p[tag=link] damageDealt matches 1.. run say NOT MELEE
execute at @s[tag=!forceDirection] rotated as @p[tag=link] run tp @s ~ ~ ~ ~ ~
tag @s remove forceDirection

scoreboard players add @s stasisDamage 1024
execute store result score healthReader stasisDamage run data get entity @s Health
scoreboard players operation @s stasisDamage -= healthReader stasisDamage
execute if score @s stasisDamage matches 21.. run scoreboard players set @s stasisDamage 20

function breath_of_the_wild:runes/stasis/set_color
