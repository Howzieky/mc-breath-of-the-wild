execute facing entity @p[tag=link] eyes rotated ~ 0 positioned ^ ^ ^.01 run tp @s ~ ~ ~
execute if entity @p[tag=link,distance=1.25..] run tag @p[tag=link] add bulletTimeMovedBack
execute facing entity @p[tag=bulletTimeMovedBack] feet positioned ^ ^ ^.3 run tp @p[tag=bulletTimeMovedBack] ~ ~ ~
#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
