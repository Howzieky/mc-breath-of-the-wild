tag @s[nbt={Potion:"minecraft:strong_swiftness"}] add iceArrow
tag @s[nbt={Potion:"minecraft:long_fire_resistance"}] add flameArrow
tag @s[nbt={Potion:"minecraft:strong_healing"}] add bombArrow
tag @s[nbt={Potion:"minecraft:long_water_breathing"}] add ancientArrow
tag @s[nbt={Potion:"minecraft:long_slow_falling"}] add shockArrow

execute if entity @e[tag=bulletTime] run function bullet_time:slow_arrow

data merge entity @s[tag=iceArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:100s}],damage:0.0d,Color:-1s,crit:0b}
data merge entity @s[tag=flameArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:101s}],damage:0.0d,Color:-1s,crit:0b}
data merge entity @s[tag=bombArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:102s}],damage:0.0d,Color:-1s,crit:0b}
data merge entity @s[tag=ancientArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:103s}],damage:0.0d,Color:-1s,crit:0b}
data merge entity @s[tag=shockArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:104s}],damage:0.0d,Color:-1s,crit:0b}

execute as @s[tag=flameArrow] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~
execute as @s[tag=bombArrow] run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~
