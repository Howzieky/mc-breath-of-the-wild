scoreboard players set @s damageDealt 0
tp @e[tag=urbosaStand] ~ 0 ~
kill @e[tag=urbosaStand]
tag @s add urbosaDisabled

execute rotated as @s rotated ~ -40 positioned as @s run summon minecraft:armor_stand ^ ^ ^3 {NoBasePlate:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTU5NDk2NTUyNDY4NywKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hMjIyZTJlNTU1ZGU0M2ZhNmM0ODZiNmY1NjkwMGM2NGVlMTM1MTQyMDlmZjExYmE3ZDBlNGQ0NzYyMTJiY2I5IgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,1]}}}],Pose:{Head:[-15f,0f,0f],LeftLeg:[25f,25f,354f],RightLeg:[25f,335f,6f],LeftArm:[10f,10f,-60f],RightArm:[10f,10f,60f]},Tags:["urbosa"],Marker:1b}
team join ghostGlow @e[tag=urbosa]

execute as @e[distance=..30,tag=!link,team=!ghostGlow,tag=!bowDetector] at @s run function breath_of_the_wild:effect/electrocute/start
#execute as @e[tag=electrocuted,distance=..30] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0 .5 0 1 500
execute as @e[tag=electrocuted,distance=..30,type=!item] at @s run summon lightning_bolt ~ ~1 ~
effect give @e[tag=urbosa] glowing 100 1 true
execute at @e[tag=urbosa] facing entity @s eyes facing ^ ^ ^-1 positioned ^ ^1 ^4 run tp @e[tag=urbosa] ~ ~ ~ ~ ~
execute as @e[tag=urbosa] at @s run summon lightning_bolt
#scoreboard players set @e[tag=urbosa,tag=!old] darukTimer 0
