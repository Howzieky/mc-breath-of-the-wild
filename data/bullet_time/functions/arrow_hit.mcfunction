execute as @s[nbt={ActiveEffects:[{Id:26b}]}] store result score @s health run data get entity @s Health
scoreboard players operation @s[nbt={ActiveEffects:[{Id:26b}]}] health -= 10 constants

execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] run function bullet_time:arrow_hit_ice
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] run function bullet_time:arrow_hit_flame
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:102b}]}] run function bullet_time:arrow_hit_bomb
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:103b}]}] run function bullet_time:arrow_hit_ancient
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:100b}]}] run function bullet_time:arrow_hit_ice
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:101b}]}] run function bullet_time:arrow_hit_flame
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:102b}]}] run function bullet_time:arrow_hit_bomb
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:103b}]}] run function bullet_time:arrow_hit_ancient

execute as @s[nbt={ActiveEffects:[{Id:26b}]}] store result entity @s Health float 1 run scoreboard players get @s health
effect clear @s luck
kill @s[nbt={CustomPotionEffects:[{Id:26b}]}]
tag @s add landed
