#tellraw @a ["BEFORE: ",{"score":{"name":"tempLength","objective":"lightningVars"}}]
scoreboard players remove tempLength lightningVars 1
#particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1 force
#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force
#execute unless score tempLength lightningVars > 0 constants run particle minecraft:witch ~ ~ ~ 0 0 0 0 1
execute unless score tempLength lightningVars > 0 constants if score segmentCount lightningVars > 0 constants run function breath_of_the_wild:effects/lightning/split
execute if score tempLength lightningVars > 0 constants positioned ^ ^ ^.2 run function breath_of_the_wild:effects/lightning/raycast
#scoreboard players add tempLength lightningVars 1
#tellraw @a ["AFTER: ",{"score":{"name":"tempLength","objective":"lightningVars"}}]
#execute if score tempLength lightningVars matches 1 if score segmentCount lightningVars matches 1.. positioned ~ ~ ~ rotated ~20 ~ run particle minecraft:witch ~ ~ ~ 0 0 0 0 1
#say -----TEST-----
#tellraw @a ["length1: ",{"score":{"name":"tempLength","objective":"lightningVars"}}]

#tellraw @a ["length2: ",{"score":{"name":"tempLength","objective":"lightningVars"}}]
#execute if score tempLength lightningVars matches 1 run say 2
#execute if score tempLength lightningVars matches 1 run tellraw @s {"score":{"name":"segmentCount","objective":"lightningVars"}}
#execute if score tempLength lightningVars matches 1 if score segmentCount lightningVars matches 1.. positioned ~ ~ ~ rotated ~-20 ~ run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1
#execute if score tempLength lightningVars matches 0 if score segmentCount lightningVars matches 1.. run function breath_of_the_wild:effects/lightning/start_2
#scoreboard players remove tempLength lightningVars 1
#say uhhh
#execute if score length lightningVars matches 0 run function breath_of_the_wild:effects/lightning/split
#execute if score length lightningVars matches 0 run scoreboard players add length lightningVars 1
#execute if score length lightningVars matches 0 run scoreboard players add segmentDistance lightningVars 1
