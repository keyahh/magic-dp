#ran by base
##ran by lich model

#scoreboard players operation #magicSearch magic.id = @s magic.id
#tag @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id,distance=..5] add phase2
#data merge entity @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id,distance=..5] {NoAI:0b}

tag @s add phase2
data merge entity @s {NoAI:0b}