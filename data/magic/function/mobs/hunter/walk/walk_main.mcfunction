execute on passengers if entity @s[tag=aj.mage_hunter.root,tag=!aj.mage_hunter.animation.walk.playing] at @s run function animated_java:mage_hunter/animations/walk/play

execute unless predicate magic:moving run function magic:mobs/hunter/walk/stop_walking
