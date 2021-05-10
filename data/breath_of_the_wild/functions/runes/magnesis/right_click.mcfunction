tag @s[tag=draggingMagnesis] add wasDraggingMagnesis
execute if entity @s[tag=draggingMagnesis] at @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:runes/magnesis/rc_deselect
execute if entity @s[tag=!wasDraggingMagnesis] if entity @e[tag=selectedMagnesisEntity] run function breath_of_the_wild:runes/magnesis/rc_select
#say @s[tag=!wasDraggingMagnesis] @e[tag=magnesisBlockSelector]
execute if entity @s[tag=!wasDraggingMagnesis] at @e[tag=raytrace] if block ~ ~ ~ #breath_of_the_wild:metal run function breath_of_the_wild:runes/magnesis/rc_select_block

#tag @e[tag=selectedMagnesisEntity,limit=1] add drawTarget
execute at @e[tag=selectedMagnesisEntity,limit=1] run particle dust 1.0 0.0 0.0 1.0 ~ ~1 ~ 1 1 1 0 1000
#execute at @s[tag=draggingMagnesis] anchored eyes as @e[tag=selectedMagnesisEntity,limit=1] facing entity @s feet run function breath_of_the_wild:draw_line_to_target

tag @s remove wasDraggingMagnesis
#execute as @e[tag=cryonisBlock] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=raytrace,dx=2,dy=3,dz=2] at @s run function breath_of_the_wild:break_cryonis
#execute as @e[tag=raytrace,tag=!justBrokeCyronis] at @s if block ~-1 ~1 ~-1 water if block ~-1 ~1 ~ water if block ~-1 ~1 ~1 water if block ~ ~1 ~-1 water if block ~ ~1 ~ water if block ~ ~1 ~1 water if block ~1 ~1 ~-1 water if block ~1 ~1 ~ water if block ~1 ~1 ~1 water positioned ~-1 ~1 ~-1 unless entity @e[dx=2,dy=3,dz=2,tag=!raytrace,tag=!cryonisCube,tag=!bigCryonisCube] positioned ~1 ~-1 ~1 run function breath_of_the_wild:create_cryonis
#execute if entity @s[tag=failed] at @e[tag=raytrace] run particle block ice ~ ~2 ~ 1 2 1 0 500
#tag @e[tag=raytrace] remove justBrokeCyronis
