execute if entity @s[tag=paragliding] run function bullet_time:end_paraglider
tag @a add climbing
scoreboard players set @s jump 0
execute if score @s stamina matches 1.. run scoreboard players remove @s stamina 1
tp @s ^ ^ ^-.36
effect clear @s minecraft:levitation
execute unless entity @s[tag=crouching] run effect give @s minecraft:levitation 1 1 true
execute if entity @s[tag=crouching] run effect give @s minecraft:levitation 1 252 true
