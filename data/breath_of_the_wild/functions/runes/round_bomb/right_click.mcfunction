tag @s[tag=liveRoundBomb] add wasLiveRoundBomb
execute if entity @s[tag=wasLiveRoundBomb,tag=liveSquareBomb] at @e[tag=round_bomb_back] if entity @e[tag=square_bomb_back,distance=..7] run function breath_of_the_wild:runes/square_bomb/detonate
execute if entity @s[tag=wasLiveRoundBomb] run function breath_of_the_wild:runes/round_bomb/detonate
execute if entity @s[tag=!wasLiveRoundBomb] run function breath_of_the_wild:runes/round_bomb/create
tag @s remove wasLiveRoundBomb
