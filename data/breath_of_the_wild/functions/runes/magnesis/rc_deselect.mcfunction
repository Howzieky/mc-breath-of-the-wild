tag @s remove draggingMagnesis
tag @e remove selectedMagnesisEntity

kill @e[tag=magnesisTarget]
execute as @e[tag=magnesisBlockCarrier] run data modify entity @s {} merge value {Health:0.0f,DeathTime:-30s}
execute as @e[type=minecraft:falling_block,tag=magnesisFallingBlock] run data merge entity @s {Glowing:0b}
function breath_of_the_wild:runes/magnesis/restore_hotbar
