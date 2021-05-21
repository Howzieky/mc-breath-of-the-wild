scoreboard players set @s dropCS 0
scoreboard players set @s selectedRune -1
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{CustomModelData:2,display:{Name:'{"text":"Right click to select rune","color":"red","italic":"false","bold":"true"}'}}


execute if entity @s[tag=!selectingRune] run function breath_of_the_wild:runes/switch_rune
