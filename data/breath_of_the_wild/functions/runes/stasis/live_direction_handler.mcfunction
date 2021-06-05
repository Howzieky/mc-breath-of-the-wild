execute if predicate breath_of_the_wild:just_hurt run function breath_of_the_wild:runes/stasis/hit_stasis_entity
execute if score 3rdTick variables matches 0 run function breath_of_the_wild:runes/stasis/arrow/start_draw

scoreboard players operation stasisMathTime variables = stasisRemainingTime variables
execute if score stasisRemainingTime variables <= 160 constants if score stasisRemainingTime variables > 96 constants run function breath_of_the_wild:runes/stasis/ding/slow
execute if score stasisRemainingTime variables <= 96 constants if score stasisRemainingTime variables > 32 constants run function breath_of_the_wild:runes/stasis/ding/medium
execute if score stasisRemainingTime variables <= 32 constants if score stasisRemainingTime variables > 2 constants run function breath_of_the_wild:runes/stasis/ding/fast
