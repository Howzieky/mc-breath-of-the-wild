#execute unless entity @s[nbt={PierceLevel:4b}] run kill @s
execute if entity @s[tag=iceArrow] run function breath_of_the_wild:arrows/tick/ice
execute if entity @s[tag=flameArrow] run function breath_of_the_wild:arrows/tick/flame
execute if entity @s[tag=bombArrow] run function breath_of_the_wild:arrows/tick/bomb
execute if entity @s[tag=ancientArrow] run function breath_of_the_wild:arrows/tick/ancient
execute if entity @s[tag=shockArrow] run function breath_of_the_wild:arrows/tick/shock
