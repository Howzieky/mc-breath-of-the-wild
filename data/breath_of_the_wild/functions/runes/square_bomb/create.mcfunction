tag @s add liveSquareBomb
execute rotated ~ -40 run summon minecraft:item ^ ^ ^1 {Age:-32768s,PickupDelay:32767s,Item:{tag:{CustomModelData:1},id:"minecraft:gunpowder",Count:1b},Tags:["square_bomb_back","square_bomb"],Invulnerable:1b,Motion:[0.0d,0.0d,0.0d]}
execute at @s run summon minecraft:armor_stand ^ ^ ^ {Fire:32767s,Marker:1b,NoBasePlate:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTE4MTcwNzIyMiwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS82MjZlNmQwODgwY2Q2ZGUzYTAxMjA5Nzk0NjlmNDgxZjJmZDY3MDJmMGI4ZTJkMDE3NmMyNTAxZjNjNjdiMDZhIgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,5]}}}],Tags:["square_bomb_front","square_bomb"],Small:1b}
execute if entity @s[predicate=breath_of_the_wild:on_ground] as @e[tag=square_bomb_back] run function breath_of_the_wild:runes/square_bomb/calculate_throw

item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/square_bomb_live
