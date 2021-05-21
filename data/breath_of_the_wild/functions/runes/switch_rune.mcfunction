tag @s add selectingRune

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["runeLock"]}
effect give @s[predicate=!breath_of_the_wild:on_ground] minecraft:levitation 1000000 255 true
#effect give @s minecraft:slowness 1000000 6 true
#effect give @s minecraft:jump_boost 1000000 128 true

execute rotated ~-60 0 run summon minecraft:armor_stand ^ ^.15 ^3 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["runeSelector","rBomb"],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTE4MjkwNDQxOCwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kMjMwMWU2ZGY0ODhiYmZjODM0OWVkOGYwZGFmODU3YjMzYjRhMWI0NGUwNGRlZWIwMjhlMDliNWVkYjU3ZjIwIgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,6]}}}]}

execute rotated ~-30 0 run summon minecraft:armor_stand ^ ^.15 ^3 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["runeSelector","sBomb"],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTE4MTcwNzIyMiwKICAicHJvZmlsZUlkIiA6ICJiNDg0ZjM2YzkxZGU0NTgzYjNkZTdlNTIzNjZlNjZhMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJIb3d6aWVreSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS82MjZlNmQwODgwY2Q2ZGUzYTAxMjA5Nzk0NjlmNDgxZjJmZDY3MDJmMGI4ZTJkMDE3NmMyNTAxZjNjNjdiMDZhIgogICAgfQogIH0KfQ=="}]},Id:[I;0,0,0,5]}}}]}

execute rotated ~ 0 run summon minecraft:armor_stand ^ ^-.35 ^2.5 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["runeSelector","magnesis"],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:compass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:lure"}]}}]}

execute rotated ~30 0 run summon minecraft:armor_stand ^ ^-.35 ^2.5 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["runeSelector","stasis"],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}}]}

execute rotated ~60 0 run summon minecraft:armor_stand ^ ^.15 ^3 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["runeSelector","cryonis"],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}}]}
