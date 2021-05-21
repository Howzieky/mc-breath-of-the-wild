execute unless entity @s[tag=liveStasis] run function breath_of_the_wild:runes/stasis/holding_cs/not_live


#execute if entity @s[tag=draggingMagnesis] anchored eyes run function breath_of_the_wild:runes/magnesis/holding_cs/tick_dragging

execute if score @s useCS matches 1.. run function breath_of_the_wild:runes/stasis/right_click
