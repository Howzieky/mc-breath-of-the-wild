function breath_of_the_wild:tools/random/load

setworldspawn 0 0 0
forceload add 10000 10000
forceload add 0 0

scoreboard objectives add arrowDamage dummy
scoreboard objectives add creeperFuse dummy
scoreboard objectives add health dummy
scoreboard objectives add timers dummy
scoreboard objectives add iceTimer dummy
scoreboard objectives add darukTimer dummy
scoreboard objectives add miphaTimer dummy
scoreboard objectives add urbosaTimer dummy
scoreboard objectives add electrocuteTimer dummy
scoreboard objectives add updraftTimer dummy
scoreboard objectives add selectedRune dummy
scoreboard objectives add cryonisList dummy
scoreboard objectives add lightningVars dummy
scoreboard objectives add stasisDamage dummy

scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy
scoreboard objectives add xMotion dummy
scoreboard objectives add yMotion dummy
scoreboard objectives add zMotion dummy
scoreboard objectives add hRot dummy
scoreboard objectives add vRot dummy

scoreboard objectives add random dummy
scoreboard players set min random 0
scoreboard players set max random 10
scoreboard players set range random 10
scoreboard players set output random 0

scoreboard objectives add variables dummy
scoreboard players set 480thTick variables 0
scoreboard players set 20thTick variables 0
scoreboard players set 16thTick variables 0
scoreboard players set 10thTick variables 0
scoreboard players set 8thTick variables 0
scoreboard players set 5thTick variables 0
scoreboard players set 4thTick variables 0
scoreboard players set 3rdTick variables 0
scoreboard players set 2ndTick variables 0
scoreboard players set stasisMathTime variables 0
scoreboard players set stasisRemainingTime variables 0
scoreboard players set raytraceSteps variables 0

scoreboard objectives add mass dummy
scoreboard players set tiny mass 1
scoreboard players set small mass 2
scoreboard players set medium mass 3
scoreboard players set large mass 4
scoreboard players set huge mass 5

scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 0 constants 0
scoreboard players set 1 constants 1
scoreboard players set 2 constants 2
scoreboard players set 3 constants 3
scoreboard players set 4 constants 4
scoreboard players set 5 constants 5
scoreboard players set 8 constants 8
scoreboard players set 10 constants 10
scoreboard players set 16 constants 16
scoreboard players set 20 constants 20
scoreboard players set 24 constants 24
scoreboard players set 32 constants 32
scoreboard players set 30 constants 30
scoreboard players set 50 constants 50
scoreboard players set 96 constants 96
scoreboard players set 100 constants 100
scoreboard players set 160 constants 160
scoreboard players set 480 constants 480
scoreboard players set 1024 constants 1024

scoreboard objectives add stamina dummy
scoreboard players set @a stamina 200
scoreboard objectives add staminaMax dummy
scoreboard players set @a staminaMax 300

scoreboard objectives add stamina dummy "Stamina"
bossbar add stamina "Stamina"
bossbar set minecraft:stamina color green
bossbar set minecraft:stamina players @a
bossbar set minecraft:stamina max 300
bossbar set minecraft:stamina value 300

team add noCollide
team modify noCollide collisionRule never

team add ghostGlow
team modify ghostGlow color dark_aqua

team add cryonisGlow
team modify cryonisGlow color red
team modify cryonisGlow collisionRule never

team add magnesisGeneral
team modify magnesisGeneral color red

team add magnesisSpecific
team modify magnesisSpecific color yellow

team add stasisGeneral
team modify stasisGeneral color yellow

team add stasisSpecific
team modify stasisSpecific color green

#data modify storage breath_of_the_wild tempEntity set value {}
#data modify storage breath_of_the_wild
data merge storage breath_of_the_wild {flags:{linkDataFresh:0b,darukAnimating:0b,miphaAnimating:0b,revaliAnimating:0b,urbosaAnimating:0b},tempEntity:{},linkData:{},stasisEntity:{},arrowInventoryCheck:{},arrowInventoryCheckCopy:{},arrowNotFound:0}

scoreboard players set linkCount variables 0
execute as @a[tag=link] run scoreboard players add linkCount variables 1
execute if score linkCount variables matches 2.. run tellraw @a [{"bold":true,"color":"red","text":"Too many Link players found. Expected: 0-1, Got: "},{"bold":true,"color":"red","score":{"name":"linkCount","objective":"variables"}},{"bold":true,"color":"red","text":". Removing all Link players."}]
execute if score linkCount variables matches 2.. run tag @a remove link
execute if score linkCount variables matches 2.. run scoreboard players set linkCount variables 0
execute if score linkCount variables matches 0 run tellraw @a [{"color":"red","text":"No Link player found. "},{"bold":true,"color":"green","text":"Click here to play as Link!","clickEvent":{"action":"run_command","value":"/function breath_of_the_wild:setup/add_link"}}]

scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add traded minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add deaths deathCount
scoreboard objectives add damageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dropCS minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add useCS minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add crouchWalk minecraft.custom:minecraft.crouch_one_cm
scoreboard players set sneakTimeOld sneakTime 0
