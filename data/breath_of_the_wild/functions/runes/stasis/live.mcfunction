#execute if score 20thTick variables matches 0 run playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 2 .1


#execute if entity @s[tag=!stasisDirectionHandler] as @e[tag=stasisDirectionHandler] at @s run function breath_of_the_wild:runes/stasis/live_direction_handler

#say HEALTH RESET
data merge entity @s {Fire:0s,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}
execute if entity @s[type=#breath_of_the_wild:needs_slime] as @e[tag=dummyStasisSlime] run data merge entity @s {Fire:0s,Motion:[0.0d,0.0d,0.0d]}

scoreboard players remove stasisRemainingTime variables 1
execute if score stasisRemainingTime variables matches ..0 run function breath_of_the_wild:runes/stasis/release

 