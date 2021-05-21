#execute if entity @s[tag=!staminaExhausted,tag=!climbJumping] if block ~ ~-1 ~ #breath_of_the_wild:intangible if block ^ ^ ^.31 #breath_of_the_wild:intangible unless block ^ ^ ^.4 #breath_of_the_wild:intangible run function breath_of_the_wild:climb/tick_stopped
execute if block ~ ~-1 ~ #breath_of_the_wild:intangible run tag @s add canClimb
tag @s[tag=climbing] add canClimb
execute if entity @s[tag=!staminaExhausted,tag=!climbJumping,tag=canClimb] unless block ^ ^ ^.33 #breath_of_the_wild:intangible run function breath_of_the_wild:climb/tick
tag @s remove canClimb
execute if entity @s[tag=climbing] run function breath_of_the_wild:tick_movement_check
execute if entity @s[tag=climbJumpEnabled] if block ^ ^ ^.39 #breath_of_the_wild:intangible rotated ~90 ~ if block ^ ^ ^.39 #breath_of_the_wild:intangible rotated ~90 ~ if block ^ ^ ^.39 #breath_of_the_wild:intangible rotated ~90 ~ if block ^ ^ ^.39 #breath_of_the_wild:intangible run function breath_of_the_wild:climb/end
execute if entity @s[tag=climbing,tag=!climbJumpEnabled] positioned ^ ^ ^.43 if block ~ ~ ~ #breath_of_the_wild:intangible run function breath_of_the_wild:climb/end
execute if entity @s[tag=climbing,tag=staminaExhausted] run function breath_of_the_wild:climb/end
#execute if entity @s[tag=climbing] unless entity @e[tag=climbJumpMovementCheck] run summon minecraft:armor_stand ~ ~ ~ {Tags:["climbJumpMovementCheck"],Marker:1b,Invisible:1b}
#execute unless entity @s[tag=climbing] if entity @e[tag=climbJumpMovementCheck] run kill @e[tag=climbJumpMovementCheck]
