particle minecraft:dust_color_transition 1 .8 0 2 1 .8 0 ^ ^ ^2 0 0 0 0 1 force
#say @e[distance=..10,limit=1]
execute positioned ^ ^ ^.5 unless entity @s[dx=1,dy=1,dz=1] run function breath_of_the_wild:runes/stasis/draw_stasis_ray/freeze