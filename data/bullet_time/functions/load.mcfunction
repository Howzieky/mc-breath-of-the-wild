setworldspawn 0 0 0

scoreboard objectives add mx dummy
scoreboard objectives add my dummy
scoreboard objectives add mz dummy
scoreboard objectives add arrowDamage dummy
scoreboard objectives add creeperFuse dummy
scoreboard objectives add health dummy
scoreboard objectives add timers dummy
scoreboard objectives add iceTimer dummy
scoreboard objectives add darukTimer dummy
scoreboard objectives add miphaTimer dummy
scoreboard objectives add urbosaTimer dummy
scoreboard objectives add electrocuteTimer dummy

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
scoreboard objectives add hRot dummy
scoreboard objectives add vRot dummy

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
scoreboard players set @a stamina 700
scoreboard objectives add staminaMax dummy
scoreboard players set @a staminaMax 1000

scoreboard objectives add stamina dummy "Stamina"
bossbar add stamina "Stamina"
bossbar set minecraft:stamina color green
bossbar set minecraft:stamina players @a
bossbar set minecraft:stamina max 1000
bossbar set minecraft:stamina value 1000

team add noCollide
team modify noCollide collisionRule never

team add ghostGlow
team modify ghostGlow color dark_aqua

scoreboard players set linkCount timers 0
execute as @e[tag=link] run scoreboard players add linkCount timers 1
execute if score linkCount timers matches 2.. run tellraw @a [{"bold":"true","color":"red","text":"Too many Link players found. Expected: 0-1, Got: "},{"bold":"true","color":"red","score":{"name":"linkCount","objective":"timers"}},{"bold":"true","color":"red","text":". Removing all Link players."}]
execute if score linkCount timers matches 2.. run tag @e remove link
execute if score linkCount timers matches 2.. run scoreboard players set linkCount timers 0
execute if score linkCount timers matches 0 run tellraw @a [{"color":"red","text":"No Link player found. "},{"bold":"true","color":"green","text":"Click here to play as Link!","clickEvent":{"action":"run_command","value":"/tag @s add link"}}]

scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add traded minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add deaths deathCount
scoreboard objectives add damageDealt minecraft.custom:minecraft.damage_dealt
scoreboard players set sneakTimeOld sneakTime 0
execute unless entity @e[tag=bowDetector] run summon minecraft:villager 0 256 0 {Silent:1b,Tags:["bowDetector"],NoGravity:1b,VillagerData:{profession:nitwit,level:2,type:plains},Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:11,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:10,Amplifier:100,Duration:999999,ShowParticles:0b}],NoAI:1b,PersistenceRequired:1b}
team join noCollide @e[tag=bowDetector]
