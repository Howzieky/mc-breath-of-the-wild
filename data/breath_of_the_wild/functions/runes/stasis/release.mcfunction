


execute as @e[tag=stasisDirectionHandler] if score @s stasisDamage matches 1.. run data modify storage minecraft:breath_of_the_wild stasisEntity.Rotation set from entity @s Rotation
#tellraw @a {"storage":"minecraft:breath_of_the_wild","nbt":"stasisEntity.Rotation"}
#data modify storage minecraft:breath_of_the_wild {} merge value {NoAI:0b,NoGravity:0b,inGround:0b,Glowing:0b}
data remove storage minecraft:breath_of_the_wild stasisEntity.Tags
execute if entity @s[tag=!frozen] run data modify storage minecraft:breath_of_the_wild stasisEntity.NoAI set value 0b
data modify storage minecraft:breath_of_the_wild stasisEntity.NoGravity set value 0b
data modify storage minecraft:breath_of_the_wild stasisEntity.inGround set value 0b
data modify storage minecraft:breath_of_the_wild stasisEntity.Glowing set value 0b
data modify entity @s {} merge from storage minecraft:breath_of_the_wild stasisEntity
data modify storage minecraft:breath_of_the_wild stasisEntity set value {}
#data merge entity @s {NoAI:0b,NoGravity:0b,inGround:0b,Glowing:0b}
team modify stasisSpecific color green
tag @p[tag=link] remove liveStasis
tag @e remove recentStasis
kill @e[tag=stasisPathMarker]

execute as @e[tag=stasisDirectionHandler] if score @s stasisDamage matches 1.. at @s rotated as @s run function breath_of_the_wild:runes/stasis/shoot
tag @s remove stasisDirectionHandler
tag @s remove stasisFrozen

execute if entity @s[type=#breath_of_the_wild:needs_slime] as @e[tag=dummyStasisSlime] run data merge entity @s {Health:0.0f,Pos:[0.0d,-1000.0d,0.0d],HurtTime:19s}

scoreboard players reset @s stasisDamage

playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1 1

function breath_of_the_wild:runes/stasis/draw_stasis_ray/start_release
item modify entity @p[scores={selectedRune=3}] hotbar.6 breath_of_the_wild:shiekah_slate/stasis
