#Handle if the hit entity was the one locked with stasis
execute as @s[tag=stasisFrozen] run function breath_of_the_wild:runes/stasis/release
execute if entity @s[tag=stasisDirectionHandler,tag=!stasisFrozen] as @e[tag=stasisFrozen] run function breath_of_the_wild:arrows/hit/ancient

execute if predicate breath_of_the_wild:arrows/type/ancient if entity @s[nbt={inBlockState:{Name:"minecraft:ice"}}] positioned ~-2.1 ~-4.1 ~-2.1 as @e[tag=cryonisBlock,dx=3.2,dy=4.2,dz=3.2,sort=nearest,limit=1] at @s run function breath_of_the_wild:arrows/hit_cryonis/ancient

particle minecraft:soul_fire_flame ^ ^ ^ .1 .1 .1 .1 300 force
execute as @s run tp @s ~ -10 ~
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 10
execute if predicate breath_of_the_wild:arrows/hit/ancient run particle minecraft:enchant ~ ~2.2 ~ 0 0 0 10 1000 force

#execute at @e[tag=cryonisBlock] positioned ~-1.1 ~ ~-1.1 run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 10 force
