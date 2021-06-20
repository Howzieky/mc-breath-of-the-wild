tag @s add liveRoundBomb

execute if entity @s[tag=onGround] rotated ~ -40 run summon minecraft:item ^ ^ ^.5 {Age:-32768s,PickupDelay:32767s,Item:{tag:{CustomModelData:1},id:"minecraft:gunpowder",Count:1b},Tags:["round_bomb_back","round_bomb"],Invulnerable:1b,Motion:[0.0d,0.0d,0.0d]}
execute if entity @s[tag=onGround] rotated ~ -40 run summon minecraft:armor_stand ^ ^ ^.5 {HasVisualFire:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTE4MjkwNDQxOCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kMjMwMWU2ZGY0ODhiYmZjODM0OWVkOGYwZGFmODU3YjMzYjRhMWI0NGUwNGRlZWIwMjhlMDliNWVkYjU3ZjIwIgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,6]}}}],Tags:["round_bomb_front","round_bomb"],Small:1b}

execute unless entity @s[tag=onGround] rotated ~ -40 run summon minecraft:item ~ ~-1 ~ {Age:-32768s,PickupDelay:32767s,Item:{tag:{CustomModelData:1},id:"minecraft:gunpowder",Count:1b},Tags:["round_bomb_back","round_bomb"],Invulnerable:1b,Motion:[0.0d,0.0d,0.0d]}
execute unless entity @s[tag=onGround] rotated ~ -40 run summon minecraft:armor_stand ~ ~-1 ~ {HasVisualFire:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTE4MjkwNDQxOCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kMjMwMWU2ZGY0ODhiYmZjODM0OWVkOGYwZGFmODU3YjMzYjRhMWI0NGUwNGRlZWIwMjhlMDliNWVkYjU3ZjIwIgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,6]}}}],Tags:["round_bomb_front","round_bomb"],Small:1b}

#execute if entity @s[predicate=breath_of_the_wild:on_ground] anchored eyes run tp @e[tag=round_bomb_back] ^ ^ ^6
execute if entity @s[tag=onGround] as @e[tag=round_bomb_back] positioned ~ ~1.8 ~ run function breath_of_the_wild:runes/round_bomb/calculate_throw

item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/round_bomb_live
