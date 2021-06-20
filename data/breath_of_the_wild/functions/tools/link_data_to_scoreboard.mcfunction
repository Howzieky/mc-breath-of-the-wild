function breath_of_the_wild:tools/nbt_to_link_data_if_stale

execute store result score @s xPos run data get storage minecraft:breath_of_the_wild linkData.Pos[0] 1000
execute store result score @s yPos run data get storage minecraft:breath_of_the_wild linkData.Pos[1] 1000
execute store result score @s zPos run data get storage minecraft:breath_of_the_wild linkData.Pos[2] 1000
execute store result score @s xMotion run data get storage minecraft:breath_of_the_wild linkData.Motion[0] 1000
execute store result score @s yMotion run data get storage minecraft:breath_of_the_wild linkData.Motion[1] 1000
execute store result score @s zMotion run data get storage minecraft:breath_of_the_wild linkData.Motion[2] 1000
execute store result score @s hRot run data get storage minecraft:breath_of_the_wild linkData.Rotation[0] 1000
execute store result score @s vRot run data get storage minecraft:breath_of_the_wild linkData.Rotation[1] 1000
