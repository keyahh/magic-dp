scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes facing entity @n[type=#magic:magic_user,predicate=magic:match_id] eyes positioned ^ ^ ^2.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/12/hp/slowcast

schedule function magic:spells/12/hp/loop 1t append