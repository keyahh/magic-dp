execute store result score #rng magic.temp run random value 1..20

execute if score #rng magic.temp matches 1..6 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/cast1/play
execute if score #rng magic.temp matches 7..10 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/cast2/play
execute if score #rng magic.temp matches 11..13 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/delayed_bomb/play
execute if score #rng magic.temp matches 14..17 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/dash/play
execute if score #rng magic.temp matches 18..20 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/ground_cutter/play
