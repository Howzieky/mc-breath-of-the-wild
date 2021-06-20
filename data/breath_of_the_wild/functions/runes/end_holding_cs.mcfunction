tag @s remove holdingCS
function breath_of_the_wild:runes/cryonis/look_at/water/end
function breath_of_the_wild:runes/cryonis/look_at/ice/end
execute if entity @s[tag=draggingMagnesis] run function breath_of_the_wild:runes/magnesis/rc_deselect
execute if entity @s[scores={selectedRune=2}] as @e[type=#breath_of_the_wild:metal_entities] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={selectedRune=3}] as @e run data merge entity @s[tag=!stasisFrozen] {Glowing:0b}
