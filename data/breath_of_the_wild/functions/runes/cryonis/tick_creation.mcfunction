scoreboard players remove cryonisTimer timers 1
fill ~-1 ~.1 ~-1 ~1 ~.1 ~1 ice
execute align xz positioned ~-1 ~ ~-1 as @e[tag=!cryonisAnimation,dx=2,dy=.4,dz=2] at @s run function breath_of_the_wild:runes/cryonis/raise_entity
particle minecraft:block ice ~ ~1 ~ .9 .1 .9 0 90
execute if score cryonisTimer timers matches 0 at @e[tag=cryonisBlock] run fill ~-1 ~ ~-1 ~1 ~3 ~1 ice

#execute as @e[tag=cryonisAnimation] at @s align xz positioned ~ ~1.1 ~ as @e[tag=!cryonisAnimation,dy=.5] at @s run tp ~ ~.5 ~
#execute as @e[tag=cryonisAnimation] at @s align xz positioned ~ ~1 ~ as @e[tag=!cryonisAnimation,dy=.1] at @s run say moving up
#execute if score cryonisTimer timers matches 26 run effect clear @p minecraft:levitation
#execute if score cryonisTimer timers matches 26 run effect give @p levitation 1 3 true
#execute if score cryonisTimer timers matches 0 run effect clear @p minecraft:levitation
#execute if score cryonisTimer timers matches 0 at @e[tag=cryonisBlock] run fill ~-1 ~ ~-1 ~1 ~3 ~1 ice


#say BOMBS ARE ON A 3 SECOND COOLDOWN if upgraded. Otherwise, they have a 6 second cooldown. Cryonis pillars can be destroyed with the Remote Bomb Rune, though they are impervious to Bomb Arrows. When struck with Ancient Arrows, Cryonis pillars disintegrate, leaving the Ancient Arrow behind. Cryonis pillars are impervious to all other Runes, Weapons and Arrows.
#say CRYONIS CREATION LASTS 1.5 SECONDS but it looks like you can use cryonis again 75% way through the timer
#say GALE TIMER IS ONE SECOND

#59 80 875
#
