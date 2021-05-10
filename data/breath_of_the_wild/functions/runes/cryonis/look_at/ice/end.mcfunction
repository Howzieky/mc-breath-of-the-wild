tag @e remove inCryonis
tag @e remove cryonisBlockBeingLookedAt
#tp @e[tag=cryonisCube] ~ -100 ~
team join noCollide @e[tag=bigCryonisCube]
execute unless entity @e[tag=cryonisBlockBeingLookedAt] as @e[tag=bigCryonisCube] run data merge entity @s {Glowing:0b}
