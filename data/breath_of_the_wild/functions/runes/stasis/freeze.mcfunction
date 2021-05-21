tag @p[tag=link] add liveStasis

playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1 1
particle minecraft:dust_color_transition 1 .8 0 2 1 .8 0 ~ ~ ~ 10 10 10 1 500

data modify storage minecraft:breath_of_the_wild stasisEntity set from entity @s
#data remove storage minecraft:breath_of_the_wild stasisEntity.CustomPotionEffects
data merge entity @s {NoAI:1b,Invulnerable:1b,Fire:0s,Motion:[0.0d,0.0d,0.0d],NoGravity:1b}
data merge entity @s[type=item] {Age:-32768s,PickupDelay:32767s}
execute as @e[tag=!stasisTarget] run data merge entity @s {Glowing:0b}
team modify stasisSpecific color yellow
item modify entity @p hotbar.6 breath_of_the_wild:shiekah_slate/stasis_live
