execute if predicate breath_of_the_wild:arrows/hit/elemental store result score @s health run data get entity @s Health
execute if predicate breath_of_the_wild:arrows/hit/elemental run scoreboard players operation @s health -= 10 constants

execute if predicate breath_of_the_wild:arrows/hit/ice run function breath_of_the_wild:arrows/hit/ice
execute if predicate breath_of_the_wild:arrows/hit/flame run function breath_of_the_wild:arrows/hit/flame
execute if predicate breath_of_the_wild:arrows/hit/bomb run function breath_of_the_wild:arrows/hit/bomb
execute if predicate breath_of_the_wild:arrows/hit/ancient run function breath_of_the_wild:arrows/hit/ancient
execute if predicate breath_of_the_wild:arrows/hit/shock run function breath_of_the_wild:arrows/hit/shock
execute if predicate breath_of_the_wild:arrows/type/ice run function breath_of_the_wild:arrows/hit/ice
execute if predicate breath_of_the_wild:arrows/type/flame run function breath_of_the_wild:arrows/hit/flame
execute if predicate breath_of_the_wild:arrows/type/bomb run function breath_of_the_wild:arrows/hit/bomb
execute if predicate breath_of_the_wild:arrows/type/ancient run function breath_of_the_wild:arrows/hit/ancient
execute if predicate breath_of_the_wild:arrows/type/shock run function breath_of_the_wild:arrows/hit/shock

execute if predicate breath_of_the_wild:arrows/hit/elemental store result entity @s Health float 1 run scoreboard players get @s health
effect clear @s luck
kill @s[predicate=breath_of_the_wild:arrows/type/elemental]
tag @s add landed
