execute if block ~-.125 ~ ~-.125 #breath_of_the_wild:intangible if block ~.125 ~ ~-.125 #breath_of_the_wild:intangible run function breath_of_the_wild:runes/round_bomb/roll/north
execute if block ~-.125 ~ ~-.125 #breath_of_the_wild:intangible if block ~-.125 ~ ~.125 #breath_of_the_wild:intangible run function breath_of_the_wild:runes/round_bomb/roll/west
execute if block ~-.125 ~ ~.125 #breath_of_the_wild:intangible if block ~.125 ~ ~.125 #breath_of_the_wild:intangible run function breath_of_the_wild:runes/round_bomb/roll/south
execute if block ~.125 ~ ~-.125 #breath_of_the_wild:intangible if block ~.125 ~ ~.125 #breath_of_the_wild:intangible run function breath_of_the_wild:runes/round_bomb/roll/east

execute if block ~-.125 ~ ~-.125 #breath_of_the_wild:intangible if block ~-.125 ~ ~.125 #breath_of_the_wild:intangible if block ~.125 ~ ~-.125 #breath_of_the_wild:intangible if block ~.125 ~ ~.125 #breath_of_the_wild:intangible run data merge entity @s {NoGravity:0b}
