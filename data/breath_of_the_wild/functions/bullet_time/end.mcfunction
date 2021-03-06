effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tp @s @s
execute as @e[tag=!stasisFrozen,tag=!frozen,tag=!electrocuted,tag=!bigCryonisCube,tag=!cryonisCube] run data merge entity @s {NoAI:0b}
kill @e[tag=bulletTimeMovementCheck]
tag @s remove bulletTime
execute as @e[tag=bulletTimeSlowed,type=arrow] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bulletTimeSlowed,type=arrow] store result entity @s Motion[0] double .001 run scoreboard players get @s xMotion
execute as @e[tag=bulletTimeSlowed,type=arrow] store result entity @s Motion[1] double .001 run scoreboard players get @s yMotion
execute as @e[tag=bulletTimeSlowed,type=arrow] store result entity @s Motion[2] double .001 run scoreboard players get @s zMotion
execute as @e[tag=bulletTimeSlowed,type=creeper] store result entity @s Fuse double .1 run scoreboard players get @s creeperFuse
scoreboard players reset @e[tag=bulletTimeSlowed,type=arrow]
execute as @e[tag=crit] run data merge entity @s {crit:1b}
tag @e remove crit
tag @e remove bulletTimeSlowed
tag @s remove removeBulletTime
