#execute if entity @p[tag=link,tag=climbing] run function breath_of_the_wild:arrows/slow_down
tag @s add elementalArrow
data merge entity @s {Color:-1s,crit:0b,damage:0.0d}
#data merge entity @s {Color:-1s,crit:0b,PierceLevel:2b,damage:0.1d,ShotFromCrossbow:1b}
#say PIERCE LEVEL SET


execute if predicate breath_of_the_wild:arrows/type/ice run function breath_of_the_wild:arrows/new/ice
execute if predicate breath_of_the_wild:arrows/type/flame run function breath_of_the_wild:arrows/new/flame
execute if predicate breath_of_the_wild:arrows/type/bomb run function breath_of_the_wild:arrows/new/bomb
execute if predicate breath_of_the_wild:arrows/type/ancient run function breath_of_the_wild:arrows/new/ancient
execute if predicate breath_of_the_wild:arrows/type/shock run function breath_of_the_wild:arrows/new/shock

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
