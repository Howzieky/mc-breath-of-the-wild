tag @s[tag=lookingAtWater] add wasLookingAtWater
tag @s add lookingAtWater
execute if entity @s[tag=!wasLookingAtWater] run function breath_of_the_wild:runes/cryonis/look_at/water/start
function breath_of_the_wild:runes/cryonis/look_at/water/tick
tag @s remove wasLookingAtWater
