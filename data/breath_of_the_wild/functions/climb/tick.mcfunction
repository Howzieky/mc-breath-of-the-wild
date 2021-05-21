tag @s remove climbJumpEnabled
execute if entity @s[tag=!climbing] run function breath_of_the_wild:climb/start
execute if score @s stamina matches 1.. run scoreboard players remove @s stamina 1
execute if entity @s[tag=!crouching] if block ~ ~1.9 ~ #breath_of_the_wild:intangible positioned ^ ^.1 ^-.005 run tp @s ~ ~ ~
execute if entity @s[tag=!crouching] unless block ~ ~1.9 ~ #breath_of_the_wild:intangible positioned ^ ^ ^-.005 run tp @s ~ ~ ~
execute if entity @s[tag=crouching] if block ~ ~-.1 ~ #breath_of_the_wild:intangible positioned ^ ^-.1 ^-.005 run tp @s ~ ~ ~
execute unless block ~ ~-.1 ~ #breath_of_the_wild:intangible run function breath_of_the_wild:climb/end
