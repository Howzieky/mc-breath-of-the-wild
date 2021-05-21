tag @s remove wasLookingAtCryonis
tag @s[tag=lookingAtCryonis] add wasLookingAtCryonis
tag @s remove lookingAtCryonis
execute align xyz positioned ~-1.5 ~ ~-1.5 if entity @e[tag=cryonisBlock,dx=2,dy=-4,dz=2] run tag @s add lookingAtCryonis
execute if entity @s[tag=!wasLookingAtCryonis,tag=lookingAtCryonis] run function breath_of_the_wild:runes/cryonis/look_at/ice/start
execute if entity @s[tag=lookingAtCryonis] run function breath_of_the_wild:runes/cryonis/look_at/ice/tick
