tag @s add crouching
tag @s remove galeCounting

execute as @s[predicate=!breath_of_the_wild:on_ground,tag=paragliding] run tag @s add wasParaglidingThisTick
execute as @s[predicate=!breath_of_the_wild:on_ground,tag=paragliding] run function breath_of_the_wild:paraglider/end
#used to use nbt={OnGround:0b,abilities:{flying:0b}}. Removed in favor of predicates. I could have made another one that includes
#flying, but I don't really care. The effect is that creative mode players can trigger bullet time while flying
execute as @s[predicate=!breath_of_the_wild:on_ground,tag=!climbing,tag=!paragliding,tag=!wasParaglidingThisTick,tag=!twoBlocksInAir,tag=inUpdraft,tag=!staminaExhausted,predicate=!breath_of_the_wild:flying] run function breath_of_the_wild:paraglider/start
execute as @s[predicate=!breath_of_the_wild:on_ground,tag=!climbing,tag=!paragliding,tag=!wasParaglidingThisTick,tag=twoBlocksInAir,tag=!staminaExhausted,predicate=!breath_of_the_wild:flying] run function breath_of_the_wild:paraglider/start
execute as @s[predicate=breath_of_the_wild:on_ground,tag=bulletTime,predicate=!breath_of_the_wild:flying] run function breath_of_the_wild:paraglider/start

tag @s[tag=climbing] add climbJumpEnabled
tag @s remove wasParaglidingThisTick
