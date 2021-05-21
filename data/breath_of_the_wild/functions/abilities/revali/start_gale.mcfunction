tag @s add galeFlying
scoreboard players set galeFlyingCounter timers 0
scoreboard players set galeCounter timers 5
tag @s add busy
effect clear @s slowness
execute at @s run playsound minecraft:block.beacon.activate neutral @s ~ ~ ~ 2 2
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoBasePlate:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTU5NDk2NjMzMzMzNCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kN2Y0ZWVlYzRiYTRjMGZjM2EwODJiMzg5ZjY2YmE5NWRlOTk1N2I2MDJlYzMwYTdkM2U1NjY2YWI4NjZhYTAiCiAgICB9CiAgfQp9"}]},Id:[I;0,0,0,2]}}}],Tags:["revali","championGhost"]}
team join ghostGlow @e[tag=revali]
effect give @e[tag=revali] glowing 100 1 true
execute at @e[tag=revali] run particle minecraft:soul_fire_flame ~ ~ ~ .6 1 .6 .01 50 force
execute as @s run function breath_of_the_wild:paraglider/start
tag @e[tag=freshRevaliUpdraft] remove freshRevaliUpdraft
