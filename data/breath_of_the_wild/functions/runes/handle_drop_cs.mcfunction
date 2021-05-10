scoreboard players set @s dropCS 0
scoreboard players set @s selectedRune -1
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Right click to choose a Rune ","color":"red","italic":"false","bold":"true"}'}}

execute if entity @s[tag=!selectingRune] run function breath_of_the_wild:runes/switch_rune
