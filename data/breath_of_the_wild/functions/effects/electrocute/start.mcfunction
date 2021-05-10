tag @s add electrocuted
scoreboard players set @s electrocuteTimer 300
data merge entity @s {NoAI:1b}
summon item ~.5 ~.5 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["rightHandItem"],Motion:[0.2d,0.4d,0.0d],PickupDelay:30s,Health:100s}
summon item ~-.5 ~.5 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["leftHandItem"],Motion:[-0.2d,0.4d,0.0d],PickupDelay:30s,Health:100s}

data modify entity @e[tag=leftHandItem,limit=1] Item set from entity @s HandItems[0]
data modify entity @e[tag=rightHandItem,limit=1] Item set from entity @s HandItems[1]

data merge entity @s {HandItems:[]}

tag @e[tag=leftHandItem] remove leftHandItem
tag @e[tag=rightHandItem] remove rightHandItem
