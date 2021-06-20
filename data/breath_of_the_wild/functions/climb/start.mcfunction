execute if entity @s[tag=paragliding] run function breath_of_the_wild:paraglider/end
effect give @s minecraft:levitation 10000 255 true
tag @s add climbing
scoreboard players set @s jump 0
summon minecraft:armor_stand ~ ~ ~ {Tags:["climbJumpMovementCheck"],Marker:1b,Invisible:1b}
tp @s @s
