execute if entity @s[tag=ice] if entity @s[tag=hitEntity] if block ~ ~ ~ ice if block ~ ~1 ~ ice run fill ~ ~ ~ ~ ~1 ~ air destroy
execute if entity @s[tag=ice] unless entity @s[tag=hitEntity] if block ~ ~ ~ ice run fill ~ ~ ~ ~ ~ ~ air destroy
execute as @s[tag=!bulletTimeSlowed] at @s run data merge entity @s {NoAI:0b}
execute at @s run data merge entity @s {Invulnerable:0b}
execute as @s run tag @s remove frozen
scoreboard players reset @s iceTimer
execute if entity @s[tag=ice] run kill @s
