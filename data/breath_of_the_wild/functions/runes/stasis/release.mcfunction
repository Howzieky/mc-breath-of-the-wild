tag @p[tag=link] remove liveStasis
data modify entity @s {} merge from storage minecraft:breath_of_the_wild stasisEntity
data modify storage minecraft:breath_of_the_wild stasisEntity set value {}
data merge entity @s {NoAI:0b,NoGravity:0b}
team modify stasisSpecific color green

playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1 1
particle minecraft:block minecraft:gold_block ~ ~ ~ 7 7 7 1 800 force
item modify entity @p hotbar.6 breath_of_the_wild:shiekah_slate/stasis
