effect clear @s minecraft:levitation
effect give @s minecraft:levitation 1 40 true
schedule function bullet_time:end_climb_jump 3t
tag @s add climbJumping
tag @s remove climbJumpEnabled
execute if score @s stamina matches 20.. run scoreboard players remove @s stamina 20
execute if score @s stamina matches ..19 run scoreboard players set @s stamina 0
