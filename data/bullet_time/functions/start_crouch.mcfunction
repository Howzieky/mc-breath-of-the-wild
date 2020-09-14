tag @s add crouching
tag @s remove galeCounting

execute as @s[nbt={OnGround:0b},tag=paragliding] run tag @s add wasParaglidingThisTick
execute as @s[nbt={OnGround:0b},tag=paragliding] run function bullet_time:end_paraglider
execute as @s[nbt={OnGround:0b,abilities:{flying:0b}},tag=!climbing,tag=!paragliding,tag=!wasParaglidingThisTick,tag=!twoBlocksInAir,tag=inUpdraft,tag=!staminaExhausted] run function bullet_time:start_paraglider
execute as @s[nbt={OnGround:0b,abilities:{flying:0b}},tag=!climbing,tag=!paragliding,tag=!wasParaglidingThisTick,tag=twoBlocksInAir,tag=!staminaExhausted] run function bullet_time:start_paraglider
execute as @s[nbt={OnGround:1b},tag=bulletTime] run function bullet_time:start_paraglider
tag @s[tag=climbing] add climbJumpEnabled
tag @s remove wasParaglidingThisTick
