#ran by lich model

#scoreboard players operation #magicSearch magic.id = @s magic.id
#execute as @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] at @s positioned ~ ~-0.3 ~ run function magic:mobs/lich/atk/random_spell

execute on vehicle at @s positioned ~ ~-0.3 ~ run function magic:mobs/lich/atk/random_spell