scoreboard players set @s magic.atkCD 50

execute store result score #rng magic.temp run random value 1..20

execute if score #rng magic.temp matches 1..7 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/cast1/play
execute if score #rng magic.temp matches 8..9 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/cast2/play
execute if score #rng magic.temp matches 10..11 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/delayed_bomb/play
execute if score #rng magic.temp matches 12..17 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/dash/play
execute if score #rng magic.temp matches 18..20 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/ground_cutter/play
