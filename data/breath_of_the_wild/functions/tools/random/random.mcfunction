#Take the seed
scoreboard players operation #out LCG.main = #seed LCG.consts

#Do the operations to get the raw number
scoreboard players operation #out LCG.main *= #multiplier LCG.consts
scoreboard players operation #out LCG.main += #increment LCG.consts

#Use int overflow to get the next seed
scoreboard players operation #seed LCG.consts = #out LCG.main

#If there ISN'T a modulus override, use the default one
execute unless score #modulus LCG.main = #modulus LCG.main run scoreboard players operation #out LCG.main %= #modulus LCG.consts

#If there IS a modulus override, use it instead
execute if score #modulus LCG.main = #modulus LCG.main run scoreboard players operation #out LCG.main %= #modulus LCG.main

#Reset the override automatically (see Notes for disabling that)
#scoreboard players reset #modulus LCG.main
