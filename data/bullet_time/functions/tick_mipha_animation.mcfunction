execute at @p run tp @e[tag=miphaStand] ~ ~ ~
execute as @e[tag=miphaStand] at @s run tp @s ~ ~ ~ ~5 ~-.5
execute as @e[tag=miphaStand] at @s run tp @e[tag=mipha] ^ ^ ^3
execute as @e[tag=mipha] at @s positioned ~ ~ ~ facing entity @p feet run tp @s ~ ~ ~ ~ ~

execute at @a run particle minecraft:bubble_pop ~ ~1 ~ .5 .5 .5 0 2 force
execute at @a run particle minecraft:soul_fire_flame ~ ~1 ~ .5 .5 .5 .02 1 force
execute as @a at @s run playsound minecraft:block.bubble_column.bubble_pop ambient @s ~ ~ ~
execute if score @s miphaTimer matches 50 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .3 100 force
execute if score @s miphaTimer matches 50 run kill @s
execute if score @s miphaTimer matches 50 run kill @e[tag=miphaStand]
scoreboard players add @s miphaTimer 1
