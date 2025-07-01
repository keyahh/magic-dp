scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @e[type=#magic:priority1,distance=..12,predicate=!magic:match_id] run return run execute anchored eyes facing entity @n[type=#magic:priority1,distance=..12,predicate=!magic:match_id] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~

execute anchored eyes facing entity @n[type=#magic:priority2,distance=..12,predicate=!magic:match_id] eyes positioned ^ ^ ^2.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~