#particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ air unless entity @e[type=#breath_of_the_wild:stasis_capable,tag=!round_bomb,tag=!square_bomb,type=!player,distance=..1.5] positioned ^ ^ ^.25 run function breath_of_the_wild:runes/stasis/raytrace
execute as @e[type=#breath_of_the_wild:stasis_capable,tag=!round_bomb,tag=!square_bomb,distance=..1.5,sort=nearest,limit=1] run tag @s add stasisTarget
