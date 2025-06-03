tag @s add chainTarget
scoreboard players operation @s magic.chainID = #magicSearch magic.chainID
scoreboard players operation @s magic.id = #magicSearch magic.id
execute facing entity @n[type=#magic:targets,predicate=!magic:match_id,distance=..16] eyes run return run tp @s ^ ^-0.3 ^1.3