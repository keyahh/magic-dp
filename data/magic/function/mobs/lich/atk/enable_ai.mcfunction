#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
data merge entity @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] {NoAI:0b}