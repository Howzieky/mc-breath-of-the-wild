
tag @s[nbt={Potion:"minecraft:strong_swiftness"}] add iceArrow
tag @s[nbt={Potion:"minecraft:long_fire_resistance"}] add flameArrow
tag @s[nbt={Potion:"minecraft:strong_healing"}] add bombArrow
tag @s[nbt={Potion:"minecraft:long_water_breathing"}] add ancientArrow

execute if entity @e[tag=bulletTime] run function bullet_time:slow_arrow

data merge entity @s[tag=iceArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:100s}],damage:0d,Color:-1s}
data merge entity @s[tag=flameArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:101s}],damage:0d,Color:-1s}
data merge entity @s[tag=bombArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:102s}],damage:0d,Color:-1s}
data merge entity @s[tag=ancientArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:103s}],damage:0d,Color:-1s}
