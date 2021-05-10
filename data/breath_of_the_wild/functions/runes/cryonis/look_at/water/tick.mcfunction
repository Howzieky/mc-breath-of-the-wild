execute as @e[tag=00] align x align y align z positioned ~-.5 ~-.1 ~-.5 run tp @s ~ ~ ~
execute as @e[tag=10] align x align y align z positioned ~-.5 ~-.1 ~.5 run tp @s ~ ~ ~
execute as @e[tag=20] align x align y align z positioned ~-.5 ~-.1 ~1.5 run tp @s ~ ~ ~
execute as @e[tag=01] align x align y align z positioned ~.5 ~-.1 ~-.5 run tp @s ~ ~ ~
execute as @e[tag=11] align x align y align z positioned ~.5 ~-.1 ~.5 run tp @s ~ ~ ~
execute as @e[tag=21] align x align y align z positioned ~.5 ~-.1 ~1.5 run tp @s ~ ~ ~
execute as @e[tag=02] align x align y align z positioned ~1.5 ~-.1 ~-.5 run tp @s ~ ~ ~
execute as @e[tag=12] align x align y align z positioned ~1.5 ~-.1 ~.5 run tp @s ~ ~ ~
execute as @e[tag=22] align x align y align z positioned ~1.5 ~-.1 ~1.5 run tp @s ~ ~ ~

team modify cryonisGlow color red
execute if block ~-1 ~ ~-1 water if block ~-1 ~ ~ water if block ~-1 ~ ~1 water if block ~ ~ ~-1 water if block ~ ~ ~ water if block ~ ~ ~1 water if block ~1 ~ ~-1 water if block ~1 ~ ~ water if block ~1 ~ ~1 water run team modify cryonisGlow color aqua
