execute if entity @p[tag=link,tag=!climbJumpEnabled] run tp @s @p[tag=link]
execute as @p[tag=link,tag=!climbJumpEnabled] if score @s stamina matches 1.. run scoreboard players remove @s stamina 1
execute if entity @p[tag=link,tag=climbJumpEnabled] at @s rotated as @p[tag=link] run tp @p[tag=link] ~ ~ ~ ~ ~
say test
