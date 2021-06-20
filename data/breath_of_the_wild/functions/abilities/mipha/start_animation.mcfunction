data modify storage minecraft:breath_of_the_wild flags.miphaAnimating set value 1b

execute at @s rotated 0 0 run summon minecraft:armor_stand ^ ^ ^3 {Glowing:1b,NoBasePlate:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTU5NDk3MDU1NzAyNCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yMGQ2YmM4YzZjOGExNWNmZWExODkxM2ZmNjRjM2IzZDJmYTg0ZTE1ZTI3YWY0NGZiOWFjYTcwNjg2YTc4Yzc2IgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,4]}}}],Pose:{Head:[15f,0f,0f],LeftLeg:[12f,0f,14f],LeftArm:[-50f,0f,92f],RightLeg:[-12f,0f,-14f],RightArm:[-50f,0f,-92f]},Tags:["mipha","championGhost"],Marker:1b}
team join ghostGlow @e[tag=mipha]
execute facing entity @s eyes as @e[tag=mipha] run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=mipha,tag=!old] miphaTimer 0
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["miphaStand"],Marker:1b,Invisible:1b}

effect give @s minecraft:absorption 1000000 1 true
playsound minecraft:block.beacon.power_select block @s ~ ~ ~ 1 2
