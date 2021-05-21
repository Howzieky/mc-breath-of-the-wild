particle minecraft:dust 1.0 0.0 0.0 1 ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~-.5 ~ if block ~ ~ ~ air run function breath_of_the_wild:runes/magnesis/draw_line_to_ground
execute positioned ~ ~-.5 ~ unless block ~ ~ ~ air run particle dust 1.0 0.0 0.0 1.0 ~ ~.5 ~ .2 .2 .2 0 10
