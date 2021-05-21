summon minecraft:marker ~ ~ ~ {Tags:["rng"]}
scoreboard players operation range random = max random
scoreboard players operation range random -= min random
scoreboard players add range random 1
execute store result score output random run data get entity @e[tag=rng,limit=1] UUID[0]
scoreboard players operation output random %= range random
scoreboard players operation output random += min random
kill @e[tag=rng]
