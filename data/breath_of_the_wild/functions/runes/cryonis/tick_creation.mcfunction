scoreboard players remove cryonisTimer timers 1
execute as @e[tag=cryonisAnimation] at @s run setblock ~ ~.2 ~ ice
execute as @e[tag=cryonisAnimation] at @s align xz positioned ~ ~1 ~ as @e[tag=!cryonisAnimation,dy=.1] at @s run tp ~ ~.1 ~
#execute if score cryonisTimer timers matches 0 at @e[tag=cryonisBlock] run fill ~-1 ~ ~-1 ~1 ~3 ~1 ice


#BOMBS ARE ON A 3 SECOND COOLDOWN
