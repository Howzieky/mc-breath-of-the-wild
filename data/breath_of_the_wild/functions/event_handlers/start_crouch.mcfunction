tag @s add crouching
tag @s remove galeCounting

execute as @s[tag=!onGround,tag=paragliding] run tag @s add wasParaglidingThisTick
execute as @s[tag=!onGround,tag=paragliding] run function breath_of_the_wild:paraglider/end
execute as @s[tag=!onGround,tag=!climbing,tag=!paragliding,tag=!wasParaglidingThisTick,tag=!twoBlocksInAir,tag=inUpdraft,tag=!staminaExhausted,predicate=!breath_of_the_wild:flying] run function breath_of_the_wild:paraglider/start
execute as @s[tag=!onGround,tag=!climbing,tag=!paragliding,tag=!wasParaglidingThisTick,tag=twoBlocksInAir,tag=!staminaExhausted,predicate=!breath_of_the_wild:flying] run function breath_of_the_wild:paraglider/start
execute as @s[tag=onGround,tag=bulletTime,predicate=!breath_of_the_wild:flying] run function breath_of_the_wild:paraglider/start

tag @s[tag=climbing] add climbJumpEnabled
tag @s remove wasParaglidingThisTick
