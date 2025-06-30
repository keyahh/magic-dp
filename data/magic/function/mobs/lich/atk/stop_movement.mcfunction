#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] add stop
attribute @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] minecraft:movement_speed base set 0

function animated_java:lich/animations/walk/stop
tag @s remove moving