execute as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id,tag=!aj.wizard.animation.walk.playing] at @s run function animated_java:wizard/animations/walk/play

execute if entity @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id,distance=..0.01] run function magic:mobs/wizard/walk/stop_moving
