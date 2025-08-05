execute store result score #rng magic.temp run random value 1..20

execute if score #rng magic.temp matches 1..7 as @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] run return run function animated_java:mage_hunter/animations/slash/play
execute if score #rng magic.temp matches 8..14 as @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] run return run function animated_java:mage_hunter/animations/double_slash/play
execute if score #rng magic.temp matches 15..18 as @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] run return run function animated_java:mage_hunter/animations/thrust1/play
execute if score #rng magic.temp matches 19..20 as @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] run return run function animated_java:mage_hunter/animations/cross_slash/play