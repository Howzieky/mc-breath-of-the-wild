execute if score @s sneakTime matches ..14 as @s run effect clear @s slowness
execute if score @s sneakTime matches ..14 as @s run scoreboard players set galeCounter timers 5
tag @s remove crouching
execute as @s[tag=galeReady] run function bullet_time:start_gale
scoreboard players set @s sneakTime 0
tag @s remove galeReady
tag @s remove darukDisabled
tag @s remove urbosaDisabled
tag @s remove revaliDisabled
