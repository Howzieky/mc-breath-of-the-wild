execute if score @s sneakTime matches ..14 as @s run effect clear @s slowness
execute if score @s sneakTime matches ..14 as @s run scoreboard players set galeCounter timers 5
execute if entity @s[tag=climbJumpEnabled] run function breath_of_the_wild:climb/start_jump
tag @s remove crouching
execute as @s[tag=galeReady] run function breath_of_the_wild:abilities/revali/start_gale
scoreboard players set @s sneakTime 0
tag @s remove galeReady
tag @s remove darukDisabled
tag @s remove urbosaDisabled
tag @s remove revaliDisabled
