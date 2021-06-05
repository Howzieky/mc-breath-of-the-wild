tag @s remove lookAtCandidate
execute unless entity @p[tag=link,predicate=breath_of_the_wild:looking_at_candidate] run tag @e remove lookAtCandidate
execute unless entity @p[tag=link,predicate=breath_of_the_wild:looking_at_candidate] run tag @s add lookAtTarget
