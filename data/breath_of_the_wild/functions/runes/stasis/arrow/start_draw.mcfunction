scoreboard players operation arrowDistance stasisDamage = @s stasisDamage
scoreboard players operation arrowDistance stasisDamage *= 3 constants
execute if score arrowDistance stasisDamage matches 41.. run scoreboard players set arrowDistance stasisDamage 40
execute if score arrowDistance stasisDamage matches 1..5 run scoreboard players set arrowDistance stasisDamage 10

execute if score arrowDistance stasisDamage matches 1.. at @s anchored eyes run function breath_of_the_wild:runes/stasis/arrow/draw_center_line
execute if score arrowDistance stasisDamage matches 1.. run say DRAW LINE
