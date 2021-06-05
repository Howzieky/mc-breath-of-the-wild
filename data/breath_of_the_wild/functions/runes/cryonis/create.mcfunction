scoreboard players remove @e[tag=cryonisBlock] cryonisList 1
execute align xyz run summon minecraft:marker ~ ~1 ~ {Tags:["cryonisBlock"]}
scoreboard players set @e[tag=cryonisBlock,tag=!old] cryonisList 3

execute align xyz run summon minecraft:falling_block ~1.5 ~1 ~1.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~.5 ~1 ~1.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~-.5 ~1 ~1.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~1.5 ~1 ~.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~.5 ~1 ~.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~-.5 ~1 ~.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~1.5 ~1 ~-.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~.5 ~1 ~-.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}
execute align xyz run summon minecraft:falling_block ~-.5 ~1 ~-.5 {Tags:["cryonisAnimation"],BlockState:{Name:"minecraft:frosted_ice"},Time:580,NoGravity:1b,Motion:[0.0d,0.18d,0.0d],DropItem:0b}

scoreboard players set cryonisTimer timers 20
#execute at @e[tag=cryonisBlock,tag=!old] positioned ~-1 ~ ~-1 as @e[dx=1,dy=3,dz=1] at @e[tag=cryonisBlock,tag=!old]
execute as @e[scores={cryonisList=0}] at @s run function breath_of_the_wild:runes/cryonis/break
