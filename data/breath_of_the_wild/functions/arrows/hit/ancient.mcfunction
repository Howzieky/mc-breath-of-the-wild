execute as @s[tag=stasisTarget] run function breath_of_the_wild:runes/stasis/release
execute if entity @s[tag=stasisDirectionHandler,tag=!stasisTarget] as @e[tag=stasisTarget] run function breath_of_the_wild:arrows/hit/ancient
particle minecraft:soul_fire_flame ^ ^ ^ .1 .1 .1 .1 300 force
execute as @s run tp @s ~ 0 ~
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 10
execute if predicate breath_of_the_wild:arrows/hit/ancient run particle minecraft:enchant ~ ~2.2 ~ 0 0 0 10 1000 force
