execute store result score #rng magic.temp run random value 1..20

execute if score #rng magic.temp matches 1..4 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/swing1/play
execute if score #rng magic.temp matches 5..11 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/swing2/play
execute if score #rng magic.temp matches 12..16 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/delayed_bomb/play
execute if score #rng magic.temp matches 17..20 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/shotgun/play