execute as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,tag=!aj.lich.animation.walk.playing] at @s run function animated_java:lich/animations/walk/play

execute if entity @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..0.01] run function magic:mobs/lich/walk/stop_moving
