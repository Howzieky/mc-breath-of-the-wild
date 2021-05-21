#Pretty straight forward, gets the first int from the int array of the aec's UUID NBT
summon area_effect_cloud ~ ~ ~ {Tags:["LCG.seed"]}
execute store result score #seed LCG.consts run data get entity @e[type=area_effect_cloud,tag=LCG.seed,distance=0,limit=1] UUID[0]
kill @e[type=area_effect_cloud,tag=LCG.seed]
