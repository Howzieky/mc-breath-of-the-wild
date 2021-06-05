tag @s add holdingCS

execute if entity @s[scores={selectedRune=0}] run function breath_of_the_wild:runes/round_bomb/tick_holding_cs
execute if entity @s[scores={selectedRune=1}] run function breath_of_the_wild:runes/square_bomb/tick_holding_cs
execute if entity @s[scores={selectedRune=2}] run function breath_of_the_wild:runes/magnesis/holding_cs/tick
execute if entity @s[scores={selectedRune=3}] run function breath_of_the_wild:runes/stasis/holding_cs/tick
execute if entity @s[scores={selectedRune=4},predicate=breath_of_the_wild:on_ground] if score cryonisTimer timers matches ..0 run function breath_of_the_wild:runes/cryonis/tick_holding_cs
