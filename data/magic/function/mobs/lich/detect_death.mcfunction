#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
execute unless entity @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id,distance=..5] run function animated_java:lich/animations/die/play