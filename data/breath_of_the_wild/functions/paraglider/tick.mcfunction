execute facing entity @s eyes at @s as @e[tag=paraglider] run tp ~ ~1 ~
execute if score @s stamina matches 0.. run scoreboard players remove @s stamina 1
effect give @s minecraft:levitation 1 253 true
effect clear @s[tag=inUpdraft] minecraft:levitation
execute if score @s stamina matches 0 run function breath_of_the_wild:paraglider/end
execute if entity @s[predicate=breath_of_the_wild:on_ground] if score galeFlyingCounter timers matches 25.. run function breath_of_the_wild:paraglider/end
execute if entity @s[predicate=breath_of_the_wild:currently_hurt] run function breath_of_the_wild:paraglider/end
