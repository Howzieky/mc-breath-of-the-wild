data modify storage minecraft:breath_of_the_wild arrowInventoryCheck set from storage minecraft:breath_of_the_wild linkData.Inventory
scoreboard players set arrowNotFound variables 0

execute as @p[tag=link] if predicate breath_of_the_wild:arrows/in_offhand store result score arrowType variables run data get storage minecraft:breath_of_the_wild arrowInventoryCheck[-1].tag.CustomPotionEffects[0].Amplifier
execute as @p[tag=link] unless predicate breath_of_the_wild:arrows/in_offhand run function breath_of_the_wild:tools/selected_arrow
