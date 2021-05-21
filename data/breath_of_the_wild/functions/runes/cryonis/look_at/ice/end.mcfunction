tag @p[tag=link] remove wasLookingAtCryonis
tag @p[tag=link] remove lookingAtCryonis
tag @e remove inCryonis
tag @e remove cryonisBlockBeingLookedAt
team join noCollide @e[tag=bigCryonisCube]
execute as @e[tag=bigCryonisCube] run data merge entity @s {Glowing:0b,Health:0.0f,Pos:[0.0d,-10.0d,0.0d],HurtTime:19s}
