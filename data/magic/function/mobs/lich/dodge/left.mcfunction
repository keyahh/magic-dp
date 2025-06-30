tag @s add thisLich
execute rotated ~ 0 positioned 0.0 0.0 0.0 positioned ^1.2 ^ ^ summon marker run function magic:mobs/lich/atk/motion_marker
tag @s remove thisLich

execute as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/dodge_left/play