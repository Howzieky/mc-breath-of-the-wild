tag @s remove selectingRune
execute positioned ^ ^ ^3 as @e[tag=runeSelector,limit=1,sort=nearest] run tag @s add selectedRune
effect clear @s minecraft:levitation
execute as @e[tag=selectedRune] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ .04 1 .04 .01 30
execute if entity @e[tag=selectedRune,tag=rBomb] run replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Round Bomb","color":"dark_aqua","italic":"false","bold":"true"}'}}
execute if entity @e[tag=selectedRune,tag=sBomb] run replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Square Bomb","color":"dark_aqua","italic":"false","bold":"true"}'}}
execute if entity @e[tag=selectedRune,tag=magnesis] run replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Magnesis","color":"red","italic":"false","bold":"true"}'}}
execute if entity @e[tag=selectedRune,tag=stasis] run replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Stasis","color":"yellow","italic":"false","bold":"true"}'}}
execute if entity @e[tag=selectedRune,tag=cryonis] run replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cryonis","color":"aqua","italic":"false","bold":"true"}'}}
execute if entity @e[tag=selectedRune,tag=rBomb] run scoreboard players set @s selectedRune 0
execute if entity @e[tag=selectedRune,tag=sBomb] run scoreboard players set @s selectedRune 1
execute if entity @e[tag=selectedRune,tag=magnesis] run scoreboard players set @s selectedRune 2
execute if entity @e[tag=selectedRune,tag=stasis] run scoreboard players set @s selectedRune 3
execute if entity @e[tag=selectedRune,tag=cryonis] run scoreboard players set @s selectedRune 4
kill @e[tag=runeSelector]
kill @e[tag=runeLock]
