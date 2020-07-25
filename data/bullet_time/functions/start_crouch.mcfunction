tag @s add crouching
tag @s remove galeCounting
schedule clear bullet_time:close_gale_window
execute if entity @s[tag=crouchWindowOpen] run say @s crouchWindowOpen
execute if entity @s[tag=crouchWindowOpen] run function bullet_time:schedule_prime_gale
tag @s[tag=crouchWindowOpen] remove crouchWindowOpen

execute as @s[nbt={OnGround:0b},tag=paragliding] run tag @s add wasParaglidingThisTick
execute as @s[nbt={OnGround:0b},tag=paragliding] run function bullet_time:end_paraglider
execute as @s[nbt={OnGround:0b,abilities:{flying:0b}},tag=!paragliding,tag=!wasParaglidingThisTick,tag=!twoBlocksInAir,tag=inUpdraft,tag=!staminaExhausted] run function bullet_time:start_paraglider
execute as @s[nbt={OnGround:0b,abilities:{flying:0b}},tag=!paragliding,tag=!wasParaglidingThisTick,tag=twoBlocksInAir,tag=!staminaExhausted] run function bullet_time:start_paraglider
tag @s remove wasParaglidingThisTick
