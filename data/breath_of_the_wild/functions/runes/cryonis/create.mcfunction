scoreboard players remove @e[tag=cryonisBlock] cryonisList 1
execute align xyz run summon minecraft:marker ~ ~1 ~ {Tags:["cryonisBlock"]}
scoreboard players set @e[tag=cryonisBlock,tag=!old] cryonisList 3
#execute align xyz positioned ~-1 ~ ~-1 run say @p[dx=3,dy=4,dz=3]
#execute align xyz positioned ~-1 ~ ~-1 run effect give @e[dx=3,dy=4,dz=3] levitation 1 7 true
execute align xyz run summon minecraft:falling_block ~1.5 ~1 ~1.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~.5 ~1 ~1.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~-.5 ~1 ~1.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~1.5 ~1 ~.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~.5 ~1 ~.5 {Tags:["cryonisAnimation","centerCryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~-.5 ~1 ~.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~1.5 ~1 ~-.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~.5 ~1 ~-.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~-.5 ~1 ~-.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:570,NoGravity:1b,Motion:[0.0d,0.1375d,0.0d],DropItem:0b}
team join noCollide @e[tag=cryonisAnimation]

scoreboard players set cryonisTimer timers 30
#execute at @e[tag=cryonisBlock,tag=!old] positioned ~-1 ~ ~-1 as @e[dx=1,dy=3,dz=1] at @e[tag=cryonisBlock,tag=!old]
execute as @e[scores={cryonisList=0}] at @s run function breath_of_the_wild:runes/cryonis/break
