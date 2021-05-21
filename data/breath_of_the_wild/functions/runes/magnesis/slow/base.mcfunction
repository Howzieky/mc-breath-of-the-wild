execute if score @s xPos matches 2000.. run function breath_of_the_wild:runes/magnesis/slow/x
execute if score @s yPos matches 2000.. run function breath_of_the_wild:runes/magnesis/slow/y
execute if score @s zPos matches 2000.. run function breath_of_the_wild:runes/magnesis/slow/z

execute if score @s xPos matches ..-2000 run function breath_of_the_wild:runes/magnesis/slow/x_neg
execute if score @s yPos matches ..-2000 run function breath_of_the_wild:runes/magnesis/slow/y_neg
execute if score @s zPos matches ..-2000 run function breath_of_the_wild:runes/magnesis/slow/z_neg

#execute if score @s xPos matches 2000.. run scoreboard players set @s xPos 1999
#execute if score @s yPos matches 2000.. run scoreboard players set @s yPos 1999
#execute if score @s zPos matches 2000.. run scoreboard players set @s zPos 1999

#execute if score @s xPos matches ..-2000 run scoreboard players set @s xPos -1999
#execute if score @s yPos matches ..-2000 run scoreboard players set @s yPos -1999
#execute if score @s zPos matches ..-2000 run scoreboard players set @s zPos -1999
