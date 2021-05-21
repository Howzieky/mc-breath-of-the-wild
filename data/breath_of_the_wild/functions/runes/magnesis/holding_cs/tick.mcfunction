#say hello
execute unless entity @s[tag=draggingMagnesis] run function breath_of_the_wild:runes/magnesis/holding_cs/tick_no_dragging

execute if entity @s[tag=draggingMagnesis] anchored eyes run function breath_of_the_wild:runes/magnesis/holding_cs/tick_dragging

execute if score @s useCS matches 1.. run function breath_of_the_wild:runes/magnesis/right_click
