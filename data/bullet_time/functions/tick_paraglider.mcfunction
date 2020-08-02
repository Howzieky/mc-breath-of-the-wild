execute facing entity @s eyes at @s as @e[tag=paraglider] run tp ~ ~1 ~
execute if score @s stamina matches 0.. run scoreboard players remove @s stamina 1
effect give @s minecraft:levitation 1 253 true
effect clear @s[tag=inUpdraft] minecraft:levitation
execute if score @s stamina matches 0 run function bullet_time:end_paraglider
execute if entity @s[nbt={OnGround:1b}] if score galeFlyingCounter timers matches 25.. run function bullet_time:end_paraglider
execute if entity @s[nbt=!{HurtTime:0s}] run function bullet_time:end_paraglider
