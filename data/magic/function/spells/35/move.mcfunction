scoreboard players operation #magicSearch magic.id = @s magic.id

execute unless block ^ ^ ^0.1 #magic:passable run function magic:spells/35/fizzle

execute if entity @e[type=#magic:priority1,distance=..20,predicate=!magic:match_id] run return run execute anchored eyes facing entity @n[type=#magic:priority1,distance=..20,predicate=!magic:match_id] eyes positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.1 ~ 0

tp @s ^ ^ ^0.1