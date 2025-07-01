#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~