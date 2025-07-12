#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] at @s run function magic:spells/4/start