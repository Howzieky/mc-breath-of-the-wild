tag @e remove cryonisBlockBeingLookedAt
tag @e[tag=cryonisBlock,sort=nearest,limit=1] add cryonisBlockBeingLookedAt
execute as @e[tag=bigCryonisCube,tag=0] at @e[tag=cryonisBlockBeingLookedAt] align xyz positioned ~.5 ~0 ~.5 run tp @s ~ ~ ~
execute as @e[tag=bigCryonisCube,tag=1] at @e[tag=cryonisBlockBeingLookedAt] align xyz positioned ~.5 ~1 ~.5 run tp @s ~ ~ ~
execute if score @s useCS matches 1.. run function breath_of_the_wild:runes/cryonis/right_click
schedule function breath_of_the_wild:runes/cryonis/look_at/ice/end 2t replace
