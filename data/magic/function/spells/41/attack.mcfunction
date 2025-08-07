#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/41/fizzle

#slowcast
scoreboard players operation #magicSearch magic.id = @s magic.id
execute unless entity @e[type=#magic:priority1,distance=..20,predicate=!magic:match_id] anchored eyes rotated as @n[type=#magic:magic_user,predicate=magic:match_id] positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @e[type=#magic:priority1,distance=..20,predicate=!magic:match_id] anchored eyes facing entity @n[type=#magic:priority1,distance=..12,predicate=!magic:match_id] eyes positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/41/slowcast