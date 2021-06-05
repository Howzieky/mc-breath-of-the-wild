scoreboard players remove arrowDistance stasisDamage 1
#particle dust 1.0 1.0 0.0 1 ^ ^ ^ 0 0 0 0 1 force
function breath_of_the_wild:runes/stasis/arrow/draw_particle
execute if score arrowDistance stasisDamage matches ..5 run function breath_of_the_wild:runes/stasis/arrow/start_draw_end
execute if score arrowDistance stasisDamage matches 1.. positioned ^ ^ ^.15 run function breath_of_the_wild:runes/stasis/arrow/draw_center_line
