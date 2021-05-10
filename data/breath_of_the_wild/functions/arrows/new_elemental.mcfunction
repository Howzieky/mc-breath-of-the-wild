execute if entity @a[tag=link,tag=bulletTime] run function breath_of_the_wild:arrows/slow_down

data merge entity @s {Color:-1s,crit:0b,damage:0.0d}

execute if predicate breath_of_the_wild:arrows/type/flame run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~
execute if predicate breath_of_the_wild:arrows/type/bomb run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~

#tag @s[nbt={Potion:"minecraft:strong_swiftness"}] add iceArrow
#tag @s[nbt={Potion:"minecraft:long_fire_resistance"}] add flameArrow
#tag @s[nbt={Potion:"minecraft:strong_healing"}] add bombArrow
#tag @s[nbt={Potion:"minecraft:long_water_breathing"}] add ancientArrow
#tag @s[nbt={Potion:"minecraft:long_slow_falling"}] add shockArrow



#data merge entity @s[tag=iceArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:100s}],damage:0.0d,Color:-1s,crit:0b}
#data merge entity @s[tag=flameArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:101s}],damage:0.0d,Color:-1s,crit:0b}
#data merge entity @s[tag=bombArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:102s}],damage:0.0d,Color:-1s,crit:0b}
#data merge entity @s[tag=ancientArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:103s}],damage:0.0d,Color:-1s,crit:0b}
#data merge entity @s[tag=shockArrow] {Potion:"",CustomPotionEffects:[{Id:26b,Duration:1000s,Amplifier:104s}],damage:0.0d,Color:-1s,crit:0b}
