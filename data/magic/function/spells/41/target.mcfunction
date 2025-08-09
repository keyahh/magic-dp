scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @e[type=#magic:priority1,distance=..4,predicate=!magic:match_id] if score @s slowcast.maxDist matches ..56 run return run tag @s add stopHoming

execute unless entity @e[type=#magic:priority1,distance=..20,predicate=!magic:match_id] anchored eyes rotated as @n[type=#magic:magic_user,predicate=magic:match_id] positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @e[type=#magic:priority1,distance=..20,predicate=!magic:match_id] anchored eyes facing entity @n[type=#magic:priority1,distance=..12,predicate=!magic:match_id] eyes positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~