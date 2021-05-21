tag @s[tag=liveStasis] add wasLiveStasis
execute if entity @s[tag=!wasLiveStasis] as @e[tag=stasisTarget] run function breath_of_the_wild:runes/stasis/freeze
execute if entity @s[tag=wasLiveStasis] as @e[tag=stasisTarget] run function breath_of_the_wild:runes/stasis/release
tag @s remove wasLiveStasis

#execute as @e[tag=stasisTarget] run say hi

#tag @s[tag=liveSquareBomb] add wasLiveSquareBomb
#execute if entity @s[tag=wasLiveSquareBomb,tag=liveRoundBomb] at @e[tag=square_bomb_back] if entity @e[tag=round_bomb_back,distance=..7] run function breath_of_the_wild:runes/round_bomb/detonate
#execute if entity @s[tag=wasLiveSquareBomb] run function breath_of_the_wild:runes/square_bomb/detonate
#execute if entity @s[tag=!wasLiveSquareBomb] run function breath_of_the_wild:runes/square_bomb/create
#tag @s remove wasLiveSquareBomb
