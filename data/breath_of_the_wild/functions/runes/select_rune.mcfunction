tag @s remove selectingRune
execute positioned ^ ^ ^3 as @e[tag=runeSelector,limit=1,sort=nearest] run tag @s add selectedRune
effect clear @s minecraft:levitation
execute as @e[tag=selectedRune] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ .04 1 .04 .01 30
execute if entity @s[tag=!liveRoundBomb] if entity @e[tag=selectedRune,tag=rBomb] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/round_bomb
execute if entity @s[tag=liveRoundBomb] if entity @e[tag=selectedRune,tag=rBomb] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/round_bomb_live
execute if entity @s[tag=!liveSquareBomb] if entity @e[tag=selectedRune,tag=sBomb] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/square_bomb
execute if entity @s[tag=liveSquareBomb] if entity @e[tag=selectedRune,tag=sBomb] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/square_bomb_live
execute if entity @e[tag=selectedRune,tag=magnesis] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/magnesis
execute if entity @s[tag=!liveStasis] if entity @e[tag=selectedRune,tag=stasis] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/stasis
execute if entity @s[tag=liveStasis] if entity @e[tag=selectedRune,tag=stasis] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/stasis_live
execute if entity @e[tag=selectedRune,tag=cryonis] run item modify entity @s hotbar.6 breath_of_the_wild:shiekah_slate/cryonis
#execute if entity @e[tag=selectedRune,tag=rBomb] run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Round Bomb","color":"dark_aqua","italic":"false","bold":"true"}'}}
#execute if entity @e[tag=selectedRune,tag=sBomb] run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Square Bomb","color":"dark_aqua","italic":"false","bold":"true"}'}}
#execute if entity @e[tag=selectedRune,tag=magnesis] run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Magnesis","color":"red","italic":"false","bold":"true"}'}}
#execute if entity @e[tag=selectedRune,tag=stasis] run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Stasis","color":"yellow","italic":"false","bold":"true"}'}}
#execute if entity @e[tag=selectedRune,tag=cryonis] run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cryonis","color":"aqua","italic":"false","bold":"true"}'}}
execute if entity @e[tag=selectedRune,tag=rBomb] run scoreboard players set @s selectedRune 0
execute if entity @e[tag=selectedRune,tag=sBomb] run scoreboard players set @s selectedRune 1
execute if entity @e[tag=selectedRune,tag=magnesis] run scoreboard players set @s selectedRune 2
execute if entity @e[tag=selectedRune,tag=stasis] run scoreboard players set @s selectedRune 3
execute if entity @e[tag=selectedRune,tag=cryonis] run scoreboard players set @s selectedRune 4
kill @e[tag=runeSelector]
kill @e[tag=runeLock]
