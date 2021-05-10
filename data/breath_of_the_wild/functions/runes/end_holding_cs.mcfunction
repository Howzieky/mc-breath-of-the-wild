tag @s remove holdingCS
function breath_of_the_wild:runes/cryonis/look_at/water/end
function breath_of_the_wild:runes/cryonis/look_at/ice/end
function breath_of_the_wild:runes/magnesis/rc_deselect
execute as @e[type=#breath_of_the_wild:metal_entities] run data merge entity @s {Glowing:0b}
