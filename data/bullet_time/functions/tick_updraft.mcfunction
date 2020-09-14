execute as @s at @s run tp @s ~ ~ ~ ~60 ~
execute as @s at @s run particle minecraft:cloud ^ ^1 ^-2 0 1.25 0 1 0 force
execute as @s at @s run particle minecraft:cloud ^ ^1 ^1 0 1.25 0 1 0 force

tag @e[tag=inUpdraft] add wasInUpdraft
tag @e[tag=!newInUpdraft] remove inUpdraft
execute at @s positioned ~-2 ~ ~-2 as @e[dx=3,dy=20,dz=3,type=!zombie,type=!creeper,type=!skeleton] run tag @s add newInUpdraft
tag @e[tag=newInUpdraft] add inUpdraft
execute at @s positioned ~-2 ~ ~-2 as @e[dx=3,dy=10,dz=3,tag=paragliding] run effect give @s levitation 1 30 true
execute at @s positioned ~-2 ~10 ~-2 as @e[dx=3,dy=10,dz=3,tag=paragliding] run effect give @s levitation 1 30 true
execute as @e[tag=inUpdraft] run function bullet_time:update_scoreboards
scoreboard players add @e[tag=inUpdraft,tag=!bulletTimeSlowed] yMotion 60
execute as @e[tag=inUpdraft] store result entity @s Motion[1] double .001 run scoreboard players get @s yMotion
execute as @e[tag=wasInUpdraft,tag=!inUpdraft] run effect clear @s levitation
tag @e remove wasInUpdraft
