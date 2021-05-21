scoreboard players set #modulus LCG.main 55
function breath_of_the_wild:tools/random/random
#tellraw @a {"score":{"name":"#out","objective":"LCG.main"}}

#execute if score #out LCG.main matches 1..10 rotated ~ ~ run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 11..20 rotated ~26 ~41 run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 21..30 rotated ~-34 ~-29 run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 31..40 rotated ~-65 ~73 run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 41..50 rotated ~74 ~49 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 1..10 if block ~ ~ ~ air rotated ~18 ~8 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 11..20 if block ~ ~ ~ air rotated ~-17 ~-9 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 21..30 if block ~ ~ ~ air rotated ~-36 ~11 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 31..40 if block ~ ~ ~ air rotated ~ ~ run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 41..50 if block ~ ~ ~ air rotated ~19 ~-10 run function breath_of_the_wild:effects/lightning/start_2

scoreboard players set #modulus LCG.main 500
function breath_of_the_wild:tools/random/random
#execute if score #out LCG.main matches 1..10 rotated ~ ~ run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 11..20 rotated ~26 ~41 run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 21..30 rotated ~-34 ~-29 run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 31..40 rotated ~-65 ~73 run function breath_of_the_wild:effects/lightning/start_2
#execute if score #out LCG.main matches 41..50 rotated ~74 ~49 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 1..10 if block ~ ~ ~ air rotated ~ ~ run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 11..20 if block ~ ~ ~ air rotated ~52 ~5 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 21..30 if block ~ ~ ~ air rotated ~-17 ~-8 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 31..40 if block ~ ~ ~ air rotated ~-12 ~11 run function breath_of_the_wild:effects/lightning/start_2
execute if score #out LCG.main matches 41..50 if block ~ ~ ~ air rotated ~16 ~-8 run function breath_of_the_wild:effects/lightning/start_2

#-8+4+10-10
