playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 2 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 2 1
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 2 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 2 1
particle minecraft:dust_color_transition 1 .8 0 2 1 .8 0 ~ ~ ~ 10 10 10 1 500 force

function breath_of_the_wild:tools/set_mass

execute as @s[type=#breath_of_the_wild:needs_small_slime] at @s run summon slime ~ ~-.01 ~ {Size:0,Silent:1b,NoAI:1b,Tags:["dummyStasisSlime","stayOnNoCollide","stasisDirectionHandler"],Health:1024.0f,Attributes:[{Base:10000.0d,Name:"minecraft:generic.max_health"}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute as @s[type=#breath_of_the_wild:needs_medium_slime] at @s run summon slime ~ ~-.01 ~ {Size:1,Silent:1b,NoAI:1b,Tags:["dummyStasisSlime","stayOnNoCollide","stasisDirectionHandler"],Health:1024.0f,Attributes:[{Base:10000.0d,Name:"minecraft:generic.max_health"}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute as @s[type=#breath_of_the_wild:needs_large_slime] at @s run summon slime ~ ~-.01 ~ {Size:2,Silent:1b,NoAI:1b,Tags:["dummyStasisSlime","stayOnNoCollide","stasisDirectionHandler"],Health:1024.0f,Attributes:[{Base:10000.0d,Name:"minecraft:generic.max_health"}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
team join noCollide @e[tag=dummyStasisSlime]

tag @s[type=!#breath_of_the_wild:needs_slime] add stasisDirectionHandler
tag @p[tag=link] add liveStasis

execute if score @s mass >= tiny mass if score @s mass < medium mass run scoreboard players set stasisRemainingTime variables 200
execute if score @s mass >= medium mass if score @s mass < huge mass run scoreboard players set stasisRemainingTime variables 96
execute if score @s mass = huge mass run scoreboard players set stasisRemainingTime variables 32

data modify storage minecraft:breath_of_the_wild stasisEntity set from entity @s

#data remove storage minecraft:breath_of_the_wild stasisEntity.CustomPotionEffects
data merge entity @s {NoAI:1b,Health:1024.0f,Attributes:[{Base:10000.0d,Name:"minecraft:generic.max_health"}],Fire:0s,Motion:[0.0d,0.0d,0.0d],NoGravity:1b}
execute if entity @s[type=#breath_of_the_wild:needs_slime] run data merge entity @s {Invulnerable:1b}
data merge entity @s[type=item] {Age:-32768s,PickupDelay:32767s}
execute as @e[tag=!stasisTarget] run data merge entity @s {Glowing:0b}
team modify stasisSpecific color yellow
item modify entity @p hotbar.6 breath_of_the_wild:shiekah_slate/stasis_live
