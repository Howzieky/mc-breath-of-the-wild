tag @s add galeFlying
scoreboard players set galeFlyingCounter timers 0
scoreboard players set galeCounter timers 5
tag @s add busy
effect clear @s slowness
execute at @s run playsound minecraft:block.beacon.activate neutral @s ~ ~ ~ 2 2
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"diamond_helmet",Count:1b}],Tags:["revali"]}
execute at @e[tag=revali] run particle minecraft:soul_fire_flame ~ ~ ~ .6 1 .6 .01 50 force
execute as @s run function bullet_time:start_paraglider
