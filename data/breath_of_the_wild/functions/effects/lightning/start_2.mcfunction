scoreboard players remove segmentCount lightningVars 1
scoreboard players operation tempLength lightningVars = length lightningVars
#say test
function breath_of_the_wild:effects/lightning/raycast
#tellraw @s ["first: ",{"score":{"name":"segmentCount","objective":"lightningVars"}}]
scoreboard players add segmentCount lightningVars 1
#tellraw @a ["segmentCount: ",{"score":{"name":"segmentCount","objective":"lightningVars"}}]
