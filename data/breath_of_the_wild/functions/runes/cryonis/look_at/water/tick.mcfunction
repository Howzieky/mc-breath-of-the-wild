execute as @e[tag=00] align xyz positioned ~-.5 ~-.1 ~-.5 run tp @s ~ ~ ~
execute as @e[tag=10] align xyz positioned ~-.5 ~-.1 ~.5 run tp @s ~ ~ ~
execute as @e[tag=20] align xyz positioned ~-.5 ~-.1 ~1.5 run tp @s ~ ~ ~
execute as @e[tag=01] align xyz positioned ~.5 ~-.1 ~-.5 run tp @s ~ ~ ~
execute as @e[tag=11] align xyz positioned ~.5 ~-.1 ~.5 run tp @s ~ ~ ~
execute as @e[tag=21] align xyz positioned ~.5 ~-.1 ~1.5 run tp @s ~ ~ ~
execute as @e[tag=02] align xyz positioned ~1.5 ~-.1 ~-.5 run tp @s ~ ~ ~
execute as @e[tag=12] align xyz positioned ~1.5 ~-.1 ~.5 run tp @s ~ ~ ~
execute as @e[tag=22] align xyz positioned ~1.5 ~-.1 ~1.5 run tp @s ~ ~ ~

team modify cryonisGlow color red
execute if block ~-1 ~ ~-1 water[level=0] if block ~-1 ~ ~ water[level=0] if block ~-1 ~ ~1 water[level=0] if block ~ ~ ~-1 water[level=0] if block ~ ~ ~ water[level=0] if block ~ ~ ~1 water[level=0] if block ~1 ~ ~-1 water[level=0] if block ~1 ~ ~ water[level=0] if block ~1 ~ ~1 water[level=0] run team modify cryonisGlow color aqua

execute if score @s useCS matches 1.. run function breath_of_the_wild:runes/cryonis/right_click

schedule function breath_of_the_wild:runes/cryonis/look_at/water/end 2t replace
#execute unless block ~ ~ ~ minecraft:water run function breath_of_the_wild:runes/cryonis/look_at/water/end
