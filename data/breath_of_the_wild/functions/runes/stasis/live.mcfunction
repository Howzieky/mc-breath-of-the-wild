

#execute if score 20thTick variables matches 0 run playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 2 .1



data merge entity @s {Fire:0s,Health:1024.0f,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}
execute if entity @s[type=#breath_of_the_wild:needs_slime] as @e[tag=dummyStasisSlime] run data merge entity @s {Fire:0s,Health:1024.0f,Motion:[0.0d,0.0d,0.0d]}

scoreboard players remove stasisRemainingTime variables 1
execute if score stasisRemainingTime variables matches ..0 run function breath_of_the_wild:runes/stasis/release
