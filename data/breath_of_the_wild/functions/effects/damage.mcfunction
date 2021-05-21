execute store result score @s health run data get entity @s Health
scoreboard players operation @s health -= 10 constants
execute store result entity @s Health float 1 run scoreboard players get @s health
effect give @s[type=!#breath_of_the_wild:undead] minecraft:instant_damage 1 31
effect give @s[type=#breath_of_the_wild:undead] minecraft:instant_health 1 31
#execute at @s anchored eyes run summon minecraft:arrow ~ ~3 ~ {Motion:[0.0,10.0,0.0],damage:1.0d,Tags:["tempArrow"],LeftOwner:1b}
#say THIS GUY @e[tag=tempArrow]
