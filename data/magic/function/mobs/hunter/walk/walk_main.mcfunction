execute as @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id,tag=!aj.mage_hunter.animation.walk.playing] at @s run function animated_java:mage_hunter/animations/walk/play

execute if entity @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id,distance=..0.01] run function magic:mobs/hunter/walk/stop_walking
