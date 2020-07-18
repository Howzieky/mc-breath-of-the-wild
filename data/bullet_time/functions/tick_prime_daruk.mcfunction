effect give @s minecraft:resistance 1 100 true
attribute @s minecraft:generic.knockback_resistance base set 1000

particle item red_stained_glass_pane ~1 ~ ~ 0 0 .3 0 1
particle item red_stained_glass_pane ~-1 ~ ~ 0 0 .3 0 1
particle item red_stained_glass_pane ~ ~ ~1 .3 0 0 0 1
particle item red_stained_glass_pane ~ ~ ~-1 .3 0 0 0 1
particle item red_stained_glass_pane ~-1 ~1 ~-1 0 .5 0 0 1
particle item red_stained_glass_pane ~-1 ~1 ~1 0 .5 0 0 1
particle item red_stained_glass_pane ~1 ~1 ~-1 0 .5 0 0 1
particle item red_stained_glass_pane ~1 ~1 ~1 0 .5 0 0 1
particle item red_stained_glass_pane ~1 ~2 ~ 0 0 .3 0 1
particle item red_stained_glass_pane ~-1 ~2 ~ 0 0 .3 0 1
particle item red_stained_glass_pane ~ ~2 ~1 .3 0 0 0 1
particle item red_stained_glass_pane ~ ~2 ~-1 .3 0 0 0 1

particle soul_fire_flame ~ ~1 ~ 1 1 1 0 1

execute unless entity @s[nbt={HurtTime:0s}] run say @s

#schedule function bullet_time:tick_prime_daruk 10t
