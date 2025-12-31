execute unless entity @s[tag=inMove] run function magic:spells/48/move/move
tp @s ^ ^ ^1 facing entity @n[distance=..30,type=#magic:targets,predicate=magic:match_uuid] feet
