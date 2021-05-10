tag @s add doomed
execute as @e if score @s cryonisList < @e[tag=doomed,limit=1] cryonisList run scoreboard players add @s cryonisList 1
fill ~-1 ~ ~-1 ~1 ~ ~1 water replace ice
fill ~-1 ~1 ~-1 ~1 ~3 ~1 air destroy
kill @s
tag @e[tag=raytrace] add justBrokeCyronis
execute as @e[tag=raytrace] run function breath_of_the_wild:runes/cryonis/look_at/ice/end
