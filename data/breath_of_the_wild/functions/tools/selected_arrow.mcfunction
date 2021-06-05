data modify storage minecraft:breath_of_the_wild arrowInventoryCheckCopy set from storage minecraft:breath_of_the_wild arrowInventoryCheck[0]

execute if data storage minecraft:breath_of_the_wild arrowInventoryCheck[0] store result score arrowNotFound variables run data modify storage minecraft:breath_of_the_wild arrowInventoryCheck[0].id set value "minecraft:arrow"
execute if score arrowNotFound variables matches 1 store result score arrowType variables run data get storage minecraft:breath_of_the_wild arrowInventoryCheck[0].tag.CustomPotionEffects[0].Amplifier
execute if score arrowNotFound variables matches 1 run execute if data storage minecraft:breath_of_the_wild arrowInventoryCheck[0] store result score arrowNotFound variables run data modify storage minecraft:breath_of_the_wild arrowInventoryCheckCopy.id set value "minecraft:tipped_arrow"

execute if score arrowNotFound variables matches 1 run data remove storage minecraft:breath_of_the_wild arrowInventoryCheck[0]
execute if score arrowNotFound variables matches 1 if data storage minecraft:breath_of_the_wild arrowInventoryCheck[0] run function breath_of_the_wild:tools/selected_arrow
