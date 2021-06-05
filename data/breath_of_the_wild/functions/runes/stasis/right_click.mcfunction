tag @s[tag=liveStasis] add wasLiveStasis
execute if entity @s[tag=!wasLiveStasis] as @e[tag=stasisTarget] at @s run function breath_of_the_wild:runes/stasis/freeze
execute if entity @s[tag=wasLiveStasis] as @e[tag=stasisTarget] at @s run function breath_of_the_wild:runes/stasis/release
tag @s remove wasLiveStasis
