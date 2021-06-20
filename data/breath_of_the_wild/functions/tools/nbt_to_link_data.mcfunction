data modify storage minecraft:breath_of_the_wild linkData set from entity @s
data modify storage minecraft:breath_of_the_wild flags.linkDataFresh set value 1b
schedule function breath_of_the_wild:tools/set_link_data_not_fresh 2t
