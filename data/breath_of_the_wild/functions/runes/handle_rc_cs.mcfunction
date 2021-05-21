scoreboard players set @s useCS 0

#THIS TAG IS REMOVED IF THE create_cryonis FUNCTION IS CALLED SUCCESSFULLY
#execute as @e[tag=raytrace] at @s if block ~ ~ ~ water run tag @s add failed
#execute if score @s selectedRune matches 4 run function breath_of_the_wild:runes/cryonis/right_click
#tag @e[tag=raytrace] remove failed

execute if score @s selectedRune matches 0..1 at @e[tag=raytrace] run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 .5 500
execute if score @s selectedRune matches 0..1 at @e[tag=raytrace] run particle minecraft:dust 0 .8 1 1 ~ ~2 ~ 1 1 1 10 1000
execute if score @s selectedRune matches 0..1 at @e[tag=raytrace] run summon creeper ~ ~2 ~ {Fuse:0b}

execute if entity @s[tag=selectingRune] run function breath_of_the_wild:runes/select_rune
#execute as @e[tag=raytrace] at @s positioned ~-1 ~ ~-1 as @e[dx=2,dy=3,dz=2] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0 10
#execute as @e[tag=raytrace] at @s unless block ~-1 ~1 ~-1 water unless block ~-1 ~1 ~ water unless block ~-1 ~1 ~1 water unless block ~ ~1 ~-1 water unless block ~ ~1 ~ water unless block ~ ~1 ~1 water unless block ~1 ~1 ~-1 water unless block ~1 ~1 ~ water unless block ~1 ~1 ~1 water run say OBSTRUCTED


#execute if blocks ~ ~ ~ ~ ~ ~ at @e[tag=raytrace] run fill ~-1 ~1 ~-1 ~1 ~4 ~1 ice
