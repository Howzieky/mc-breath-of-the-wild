execute if score @s darukTimer matches 10 run function breath_of_the_wild:abilities/daruk/end_animation
scoreboard players add @s darukTimer 1
#Changing line 5 to line 6. Don't know why it was using @e and execute, so I'm removing it.
#execute as @e run attribute @s minecraft:generic.knockback_resistance base set 0
