execute as @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:runes/magnesis/calculate_movement

execute at @s[predicate=breath_of_the_wild:selected_item_slot/0] run tp @e[tag=magnesisTarget] ^ ^ ^3
execute at @s[predicate=breath_of_the_wild:selected_item_slot/1] run tp @e[tag=magnesisTarget] ^ ^ ^6
execute at @s[predicate=breath_of_the_wild:selected_item_slot/2] run tp @e[tag=magnesisTarget] ^ ^ ^9
execute at @s[predicate=breath_of_the_wild:selected_item_slot/3] run tp @e[tag=magnesisTarget] ^ ^ ^12
execute at @s[predicate=breath_of_the_wild:selected_item_slot/4] run tp @e[tag=magnesisTarget] ^ ^ ^15
execute at @s[predicate=breath_of_the_wild:selected_item_slot/5] run tp @e[tag=magnesisTarget] ^ ^ ^18
execute at @s[predicate=breath_of_the_wild:selected_item_slot/6] run tp @e[tag=magnesisTarget] ^ ^ ^21
execute at @s[predicate=breath_of_the_wild:selected_item_slot/7] run tp @e[tag=magnesisTarget] ^ ^ ^24
execute at @s[predicate=breath_of_the_wild:selected_item_slot/8] run tp @e[tag=magnesisTarget] ^ ^ ^27

execute at @e[tag=magnesisTarget] run particle dust 1.0 0.0 0.0 1.0 ~ ~ ~ .2 .2 .2 0 10
execute at @e[tag=magnesisTarget] run function breath_of_the_wild:runes/magnesis/draw_line_to_ground
execute at @e[tag=magnesisTarget] anchored feet as @e[tag=selectedMagnesisEntity] facing entity @s feet run function breath_of_the_wild:tools/draw_line_to_target
