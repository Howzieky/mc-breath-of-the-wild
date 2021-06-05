tag @s remove climbJumpEnabled
execute if entity @s[tag=!climbing] run function breath_of_the_wild:climb/start
execute if score @s stamina matches 1.. run scoreboard players remove @s stamina 1


execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~.3 ~ if block ~ ~ ~ #breath_of_the_wild:intangible run tag @s add canClimbHigher
execute if entity @s[tag=!crouching,tag=canClimbHigher] positioned ^ ^.1 ^-.005 run tp @s ~ ~ ~
execute if entity @s[tag=!crouching,tag=!canClimbHigher] positioned ^ ^ ^-.005 run tp @s ~ ~ ~
execute if entity @s[tag=crouching] if block ~ ~-.1 ~ #breath_of_the_wild:intangible positioned ^ ^-.1 ^-.005 run tp @s ~ ~ ~
execute unless block ~ ~-.1 ~ #breath_of_the_wild:intangible run function breath_of_the_wild:climb/end
tag @s remove canClimbHigher
