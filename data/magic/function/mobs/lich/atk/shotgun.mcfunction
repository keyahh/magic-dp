#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] at @s rotated ~ 0 positioned ~ ~-0.3 ~ run function magic:spells/30/start