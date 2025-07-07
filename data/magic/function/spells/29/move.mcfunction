execute unless block ^ ^ ^0.5 #magic:passable run function magic:spells/29/start_explode

tp @e[type=marker,distance=..2,tag=soulOrbParticle,predicate=magic:match_spell] ~ ~ ~0.14

execute if entity @e[type=#magic:priority1,distance=..10,predicate=!magic:match_id] run return run execute anchored eyes facing entity @n[type=#magic:priority1,distance=..12,predicate=!magic:match_id] eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.15 ~ ~

tp @s ^ ^ ^0.1