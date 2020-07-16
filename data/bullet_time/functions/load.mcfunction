setworldspawn 0 0 0

scoreboard objectives add mx dummy
scoreboard objectives add my dummy
scoreboard objectives add mz dummy
scoreboard objectives add arrowDamage dummy
scoreboard objectives add creeperFuse dummy
scoreboard objectives add health dummy
scoreboard objectives add timers dummy
scoreboard objectives add iceTimer dummy

scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy
scoreboard objectives add xPosOld dummy
scoreboard objectives add yPosOld dummy
scoreboard objectives add zPosOld dummy
scoreboard objectives add xVel dummy
scoreboard objectives add yVel dummy
scoreboard objectives add zVel dummy
scoreboard objectives add xMotion dummy
scoreboard objectives add yMotion dummy
scoreboard objectives add zMotion dummy

scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 0 constants 0
scoreboard players set 1 constants 1
scoreboard players set 2 constants 2
scoreboard players set 3 constants 3
scoreboard players set 4 constants 4
scoreboard players set 5 constants 5
scoreboard players set 10 constants 10

scoreboard objectives add stamina dummy
scoreboard players set @a stamina 50
scoreboard objectives add staminaMax dummy
scoreboard players set @a staminaMax 200

scoreboard objectives add stamina dummy "Stamina"
bossbar add stamina "Stamina"
bossbar set minecraft:stamina color green
bossbar set minecraft:stamina players @a
bossbar set minecraft:stamina max 200
bossbar set minecraft:stamina value 200

team add noCollide
team modify noCollide collisionRule never

scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add traded minecraft.custom:minecraft.talked_to_villager
scoreboard players set sneakTimeOld sneakTime 0
execute unless entity @e[tag=bowDetector] run summon minecraft:villager 0 256 0 {Silent:1b,Tags:["bowDetector"],NoGravity:1b,VillagerData:{profession:nitwit,level:2,type:plains},Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:11,Amplifier:0,Duration:999999,ShowParticles:0b}],NoAI:1b,PersistenceRequired:1b}
