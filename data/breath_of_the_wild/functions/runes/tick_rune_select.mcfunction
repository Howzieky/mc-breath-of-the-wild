#say test
#execute positioned ^ ^ ^3 as @e[tag=runeSelector,limit=1,sort=nearest] run say @s
execute as @e[tag=runeSelector] at @s anchored eyes facing entity @p[tag=link] eyes run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^ ^3 as @e[tag=runeSelector] run data merge entity @s {Glowing:0b}
execute positioned ^ ^ ^3 as @e[tag=runeSelector,limit=1,sort=nearest] run data merge entity @s {Glowing:1b}
execute at @e[tag=runeLock,distance=.05..] rotated as @s run tp @s ~ ~ ~ ~ ~
