execute if entity @s[tag=bulletTime] run function breath_of_the_wild:bullet_time/end
execute facing entity @s eyes at @s run summon armor_stand ~ ~1 ~ {Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:10048000}}},{}],HandItems:[{},{}],Pose:{Body:[91f,0f,0f],Head:[273f,0f,0f],LeftLeg:[0f,0f,200f],RightLeg:[0f,0f,162f],LeftArm:[0f,0f,274f],RightArm:[0f,0f,89f]},Tags:["paraglider"],DisabledSlots:2039583}
tag @s add paragliding
tag @s remove galeCounting
scoreboard players set @s jump 0
attribute @s minecraft:generic.knockback_resistance base set 1000

#summon slime ~ ~-3 ~ {Invulnerable:1b,NoAI:1b,Pos:[0.0d,0.0d,0.0d],Size:0,ActiveEffects:[],Tags:["paragliderSlime"]}
