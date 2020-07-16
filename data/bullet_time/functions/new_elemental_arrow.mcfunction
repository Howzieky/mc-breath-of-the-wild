execute store result score @s my run data get entity @s Motion[1] 1000
execute as @p[distance=..2] store result score @s my run data get entity @s Motion[1] 1000
execute run scoreboard players operation @s my -= @p[distance=..2] my
execute store result entity @s Motion[1] double .001 run scoreboard players get @s my

execute if entity @s[tag=!old] at @s run summon minecraft:arrow ~ ~ ~ {CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:100s}],Tags:["newCustomArrow","customArrow"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:10000s,Tags:["newCustomArrowMarker","customArrowMarker"]}]}
scoreboard players set @e[tag=newCustomArrowMarker] iceTimer -1

data modify entity @e[tag=newCustomArrow,limit=1] Pos set from entity @s Pos
data modify entity @e[tag=newCustomArrow,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=newCustomArrow,limit=1] Motion[1] set from entity @s Motion[1]
data modify entity @e[tag=newCustomArrow,limit=1] Air set from entity @s Air
data modify entity @e[tag=newCustomArrow,limit=1] Owner set from entity @s Owner
data modify entity @e[tag=newCustomArrow,limit=1] damage set from entity @s damage
data modify entity @e[tag=newCustomArrow,limit=1] Potion set from entity @s Potion
data modify entity @e[tag=newCustomArrow,limit=1] pickup set from entity @s pickup
data modify entity @e[tag=newCustomArrow,limit=1] Fire set from entity @s Fire
data modify entity @e[tag=newCustomArrow,limit=1] crit set from entity @s crit
kill @s

tag @e[tag=newCustomArrow,nbt={Potion:"minecraft:strong_swiftness"}] add iceArrow
tag @e[tag=newCustomArrow,nbt={Potion:"minecraft:long_fire_resistance"}] add flameArrow
tag @e[tag=newCustomArrow,nbt={Potion:"minecraft:strong_healing"}] add bombArrow
tag @e[tag=newCustomArrow,nbt={Potion:"minecraft:long_water_breathing"}] add ancientArrow
execute if entity @e[tag=newCustomArrow,nbt={Potion:"minecraft:strong_swiftness"}] run tag @e[tag=newCustomArrowMarker] add iceArrowMarker
execute if entity @e[tag=newCustomArrow,nbt={Potion:"minecraft:long_fire_resistance"}] run tag @e[tag=newCustomArrowMarker] add flameArrowMarker
execute if entity @e[tag=newCustomArrow,nbt={Potion:"minecraft:strong_healing"}] run tag @e[tag=newCustomArrowMarker] add bombArrowMarker
execute if entity @e[tag=newCustomArrow,nbt={Potion:"minecraft:long_water_breathing"}] run tag @e[tag=newCustomArrowMarker] add ancientArrowMarker

data merge entity @e[tag=newCustomArrow,limit=1] {Potion:""}
data modify entity @e[tag=newCustomArrow,tag=ancientArrow,limit=1] damage set value 0

tag @e[tag=newCustomArrow] remove newCustomArrow
tag @e[tag=newCustomArrowMarker] remove newCustomArrowMarker
