scoreboard players add galeFlyingCounter timers 1
execute if score galeFlyingCounter timers matches ..30 run tp @e[tag=galeStand] ~ ~5 ~
execute as @e[tag=revali] at @s positioned ~ ~ ~ facing entity Howzieky feet run tp @s ~ ~ ~ ~-30 ~
execute if score galeFlyingCounter timers matches ..20 as @e[tag=galeStand] at @s run tp @s ~ ~ ~ ~15 ~
execute if score galeFlyingCounter timers matches 21..30 as @e[tag=galeStand] at @s run tp @s ~ ~ ~ ~10 ~
execute if score galeFlyingCounter timers matches 31..40 as @e[tag=galeStand] at @s run tp @s ~ ~ ~ ~5 ~
execute if score galeFlyingCounter timers matches 41..50 as @e[tag=galeStand] at @s run tp @s ~ ~ ~ ~1 ~

execute if score galeFlyingCounter timers matches 20.. run tag @s remove busy

execute if score galeFlyingCounter timers matches ..30 as @e[tag=galeStand] at @s run particle minecraft:cloud ^ ^-2 ^3 .1 .1 .1 0 1 force
execute if score galeFlyingCounter timers matches ..30 as @e[tag=galeStand] at @s run particle minecraft:cloud ^ ^-1 ^-3 .1 .1 .1 0 10 force
execute if score galeFlyingCounter timers matches ..30 as @e[tag=galeStand] at @s run particle minecraft:cloud ^3 ^ ^ .1 .1 .1 0 1 force
execute if score galeFlyingCounter timers matches ..30 as @e[tag=galeStand] at @s run particle minecraft:cloud ^-3 ^1 ^ .1 .1 .1 0 1 force
execute if score galeFlyingCounter timers matches ..45 at @e[tag=revali] run particle minecraft:soul_fire_flame ~ ~ ~ .6 1 .6 .01 10 force

execute as @e[tag=galeStand] at @s run tp @e[tag=revali] ^ ^ ^3
execute if score galeFlyingCounter timers matches 25 run effect clear @s levitation
execute if score galeFlyingCounter timers matches 50 as @e[tag=galeFlying] run function bullet_time:end_gale
