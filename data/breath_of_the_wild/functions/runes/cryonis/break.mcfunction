tag @s add doomed
execute as @e if score @s cryonisList < @e[tag=doomed,limit=1] cryonisList run scoreboard players add @s cryonisList 1
fill ~-1 ~ ~-1 ~1 ~ ~1 water replace ice
fill ~-1 ~1 ~-1 ~1 ~3 ~1 air destroy
kill @s
tag @p[tag=link] remove lookingAtCryonis
