particle item red_stained_glass_pane ~ ~ ~ .6 1 .6 .2 1000

execute at @s run summon minecraft:armor_stand ~ ~.5 ~ {NoBasePlate:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTU5NDk2NDYzNjUyOCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80MTk4ZjYyNjk5Yzc1YWNiZjY5ZGI5OTJiNTMwNjAyYzUwYTU1OTI2YzZiNGQxNzViMTcxNjJkNWQwOWEwZWU2IgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,0]}}}],Pose:{LeftLeg:[25f,25f,354f],RightLeg:[25f,335f,6f],LeftArm:[10f,10f,-60f],RightArm:[10f,10f,60f]},Tags:["daruk"]}
team join ghostGlow @e[tag=daruk]
effect give @e[tag=daruk] glowing 100 1 true
execute rotated as @s as @e[tag=daruk] rotated ~ -10 positioned as @s run tp @s ^ ^ ^3 ~ ~
scoreboard players set @e[tag=daruk,tag=!old] darukTimer 0
tag @s add darukDisabled
