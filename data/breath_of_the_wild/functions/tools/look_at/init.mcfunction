tag @e[type=!player] add lookAtCandidate
execute as @e[type=!player] run function breath_of_the_wild:tools/look_at/test_unless_found
schedule function breath_of_the_wild:tools/look_at/end 2t replace
