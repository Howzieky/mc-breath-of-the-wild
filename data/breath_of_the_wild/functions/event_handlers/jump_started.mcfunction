tag @s add jumping
scoreboard players set @s jump 0
execute if entity @s[tag=!revaliDisabled] run function breath_of_the_wild:abilities/revali/cancel_gale
#tellraw @a {"nbt":"Tags","entity":"@s"}
execute if entity @s[tag=paragliding] run function breath_of_the_wild:paraglider/end
