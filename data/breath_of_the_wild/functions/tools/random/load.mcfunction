#Add the objectives
scoreboard objectives add LCG.consts dummy
scoreboard objectives add LCG.main dummy

#Set the constants (THOSE SHALL NEVER BE CHNAGED!)
scoreboard players set #increment LCG.consts 12345
scoreboard players set #multiplier LCG.consts 1103515245
scoreboard players set #modulus LCG.consts 10

#Get the original seed from an aec's UUID (allows for a different LCG for each world)
execute unless score #seed LCG.consts = #seed LCG.consts run function breath_of_the_wild:tools/random/get_seed
