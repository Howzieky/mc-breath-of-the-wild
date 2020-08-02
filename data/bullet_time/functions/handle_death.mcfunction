scoreboard players set @s deaths 0
summon minecraft:armor_stand ~ 100 ~ {Tags:["respawnTp"],Invisible:1b,Invulnerable:1b,Marker:1b}

execute at @s run summon minecraft:armor_stand ^ ^ ^3 {NoBasePlate:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTU5NDk3MDU1NzAyNCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yMGQ2YmM4YzZjOGExNWNmZWExODkxM2ZmNjRjM2IzZDJmYTg0ZTE1ZTI3YWY0NGZiOWFjYTcwNjg2YTc4Yzc2IgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,4]}}}],Pose:{Head:[15f,0f,0f],LeftLeg:[12f,0f,14f],LeftArm:[-50f,0f,92f],RightLeg:[-12f,0f,-14f],RightArm:[-50f,0f,-92f]},Tags:["mipha"],Marker:1b}
team join ghostGlow @e[tag=mipha]
effect give @e[tag=mipha] glowing 100 1 true
#execute rotated as @s as @e[tag=mipha] rotated ~ -10 positioned as @s run tp @s ^ ^ ^3 ~ ~
execute facing entity @s eyes as @e[tag=mipha] run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=mipha,tag=!old] miphaTimer 0
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["miphaStand"],Marker:1b,Invisible:1b}

execute store result entity @e[tag=respawnTp,limit=1] Rotation[0] float .001 run scoreboard players get @s hRot
execute store result entity @e[tag=respawnTp,limit=1] Rotation[1] float .001 run scoreboard players get @s vRot
execute rotated as @e[tag=respawnTp] run tp @s ~ ~ ~ ~ ~
kill @e[tag=respawnTp]
effect give @s minecraft:absorption 1000000 1 true
playsound minecraft:block.beacon.power_select block @s ~ ~ ~ 1 2
tag @s remove delayedDeath
