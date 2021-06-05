scoreboard players remove arrowDistance stasisDamage 1
function breath_of_the_wild:runes/stasis/arrow/draw_particle
execute if score arrowDistance stasisDamage matches 1.. positioned ^ ^ ^.15 run function breath_of_the_wild:runes/stasis/arrow/draw_end_line
scoreboard players add arrowDistance stasisDamage 1
