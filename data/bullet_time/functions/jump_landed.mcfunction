scoreboard players set @s jump 0
scoreboard players set @s sneakTime 0
say @s LANDED
tag @s add crouchWindowOpen
execute if entity @s[tag=!crouching] run schedule function bullet_time:close_gale_window 5t
execute if entity @s[tag=crouching] run function bullet_time:schedule_prime_gale

#tag @s[tag=!crouching] add galeCounting
#scoreboard players set galeCounter timers 0
