execute if entity @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:runes/magnesis/rc_select_entity
execute at @e[tag=magnesisBlockSelector] if block ~ ~ ~ #breath_of_the_wild:metal run function breath_of_the_wild:runes/magnesis/rc_select_block
execute if entity @s[tag=draggingMagnesis] run summon minecraft:marker ~ ~ ~ {Tags:["magnesisTarget"]}
execute if entity @s[tag=draggingMagnesis] run function breath_of_the_wild:runes/magnesis/replace_hotbar
