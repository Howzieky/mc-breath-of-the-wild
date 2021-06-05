scoreboard players operation stasisMathTime variables %= 4 constants

execute if score stasisMathTime variables matches 0 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 0.8
execute if score stasisMathTime variables matches 0 run team modify stasisSpecific color white
execute if score stasisMathTime variables matches 2 run function breath_of_the_wild:runes/stasis/set_color
#execute if score stasisMathTime variables matches 0 run say fast
