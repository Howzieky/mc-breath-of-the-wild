execute unless entity @e[tag=cryonisBlockBeingLookedAt] at @p[tag=link] run tp @e[tag=bigCryonisCube] ~ ~-1000 ~
scoreboard players set raytraceSteps variables 0
execute rotated as @s anchored eyes run function breath_of_the_wild:runes/cryonis/raytrace
