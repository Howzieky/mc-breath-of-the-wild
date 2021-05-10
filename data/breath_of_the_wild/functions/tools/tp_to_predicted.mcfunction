tag @s add inAirWithBow
execute unless entity @e[tag=bowDetector] at @s run summon minecraft:villager ^ ^ ^.5 {Age:-1,Silent:1b,Tags:["bowDetector"],NoGravity:1b,VillagerData:{profession:nitwit,level:2,type:plains},Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:11,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:10,Amplifier:100,Duration:999999,ShowParticles:0b}],NoAI:1b,PersistenceRequired:1b}
team join noCollide @e[tag=bowDetector]

scoreboard players operation @e[tag=bowDetector] xPos = @s xVel
scoreboard players operation @e[tag=bowDetector] yPos = @s yVel
scoreboard players operation @e[tag=bowDetector] zPos = @s zVel
scoreboard players operation @e[tag=bowDetector] xPos *= 3 constants
scoreboard players operation @e[tag=bowDetector] yPos *= 3 constants
scoreboard players operation @e[tag=bowDetector] zPos *= 3 constants
scoreboard players operation @e[tag=bowDetector] xPos += @s xPos
scoreboard players operation @e[tag=bowDetector] yPos += @s yPos
scoreboard players operation @e[tag=bowDetector] zPos += @s zPos
execute store result entity @e[tag=bowDetector,limit=1] Pos[0] double .001 run scoreboard players get @e[tag=bowDetector,limit=1] xPos
execute store result entity @e[tag=bowDetector,limit=1] Pos[1] double .001 run scoreboard players get @e[tag=bowDetector,limit=1] yPos
execute store result entity @e[tag=bowDetector,limit=1] Pos[2] double .001 run scoreboard players get @e[tag=bowDetector,limit=1] zPos
