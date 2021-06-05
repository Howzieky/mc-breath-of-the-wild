execute facing entity @a[tag=link] eyes rotated ~ 0 positioned ^ ^ ^.01 run tp @s ~ ~ ~
execute if entity @a[tag=link,distance=1.25..] run tag @a[tag=link] add bulletTimeMovedBack
execute facing entity @a[tag=bulletTimeMovedBack] feet positioned ^ ^ ^.3 run tp @a[tag=bulletTimeMovedBack] ~ ~ ~
#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
